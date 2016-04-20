defmodule Koans.MeditateWarning do
  defexception [:message]
  def message(exception) do
    "#{format(exception, location)}"
  end

  defp location do
    System.stacktrace |> Enum.at(1) |> elem(3)
  end

  defp format(exception, location) do
    IO.ANSI.format([
      :magenta, :bright, "Please meditate: ",
      :blue, :normal, exception.message,
      :yellow, " (#{location[:file]}:#{location[:line]})"
    ])
  end
end
