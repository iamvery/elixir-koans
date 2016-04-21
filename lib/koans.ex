defmodule Koans do
  @lessons [
    "about_asserts.exs",
    "about_numbers_and_booleans.exs",
    "about_strings.exs",
    "about_atoms.exs",
    "about_lists.exs",
    "about_matching.exs",
    "about_sigils.exs",
    "about_enums.exs",
    "about_tuples.exs",
    "about_maps.exs",
    "about_lists_and_maps.exs",
    "about_anonymous_functions.exs",
    "about_named_functions.exs",
    "about_binaries.exs",
    "about_processes.exs",
  ]

  defmacro __using__([]) do
    quote do
      import ExUnit.Assertions
      import Koans.DSL, only: [think: 2, __?: 0, assert_?: 1]
    end
  end

  def load do
    Koans.Examples.start_link
    @lessons |> Enum.each(&Code.load_file/1)
  end

  def start do
    System.at_exit(fn 0 -> run end)
  end

  def run do
    Koans.Examples.all
    # TODO lazy iteration
    |> focus
    |> Enum.reverse
    |> Enum.each(&exec/1)
    congratulate
  end

  defp focus(koans) do
    focused_koans = Enum.filter(koans, fn {_,_,tag} -> tag == :focus end)

    if Enum.empty?(focused_koans) do
      koans
    else
      focused_koans
    end
  end

  defp exec({module, koan, _tag}) do
    try do
      apply(module, koan, [])
    rescue
      problem in [ExUnit.AssertionError, Koans.MeditateWarning] ->
        stop_to_learn(problem, koan, module)
    end
    success(module, koan)
  end

  defp stop_to_learn(error, meditation, case) do
    failure(case, meditation)
    Koans.Formatter.failure_message(error, meditation, case)
    |> IO.puts
    exit(:shutdown)
  end

  defp failure(module, koan) do
    IO.ANSI.format([:red, "✗ #{module}: #{koan}\n"])
    |> IO.puts
  end

  defp success(module, koan) do
    IO.ANSI.format([:green, "✓ #{module}: #{koan}"])
    |> IO.puts
  end

  def meditate(subject) do
    raise Koans.MeditateWarning, message: subject
  end

  defp congratulate do
    IO.ANSI.format([:green, "\n** You have learned much. You must find your own path now. **"])
    |> IO.puts
  end
end
