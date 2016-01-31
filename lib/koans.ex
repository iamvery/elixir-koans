defmodule Koans.MeditateWarning do
  defexception [:message]
  def message(exception) do
    # TODO include offending line of code in output
    formatted_message = IO.ANSI.format([:magenta, :bright, "Please meditate: ", :blue, exception.message])
    "#{formatted_message}"
  end
end

defmodule Koans do
  def meditate(subject) do
    raise Koans.MeditateWarning, message: subject
  end

  defmacro __? do
    quote do
      meditate @meditation
    end
  end

  defmacro assert_?(_ \\ nil) do
    quote do
      meditate @meditation <> "#{IO.ANSI.format([:red, " (replace with an assertion)"])}"
    end
  end
end
