defmodule Koans.MeditateWarning do
  defexception [:message]
  def message(exception) do
    location = System.stacktrace |> Enum.at(1) |> elem(3)
    formatted_message = IO.ANSI.format(
    [
      :magenta, :bright, "Please meditate: ",
      :blue, :normal, exception.message,
      :yellow, " (#{location[:file]}:#{location[:line]})"
    ]
    )
    "#{formatted_message}"
  end
end
