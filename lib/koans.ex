defmodule Koans.MeditateWarning do
  defexception [:message]
  def message(exception) do
    # TODO include offending line of code in output
    formatted_message = IO.ANSI.format([:magenta, :bright, "Please meditate: ", :blue, exception.message])
    "#{formatted_message}"
  end
end

defmodule Koans do
  @name __MODULE__
  @lessons [
    "about_asserts.exs",
    "about_numbers_and_booleans.exs",
    "about_strings.exs",
    "about_lists.exs",
    "about_enums.exs",
    "about_tuples.exs",
    "about_maps.exs",
    "about_anonymous_functions.exs",
    "about_named_functions.exs",
    "about_match_variables.exs",
  ]

  defmacro __using__([]) do
    quote do
      import ExUnit.Assertions
      import Koans, only: [think: 2, meditate: 1, __?: 0, assert_?: 1]
    end
  end

  def load do
    start_link
    @lessons |> Enum.each(&Code.load_file/1)
  end

  def start do
    System.at_exit(fn 0 -> run end)
  end

  defp start_link do
    Agent.start_link(fn -> [] end, name: @name)
  end

  def add(koan) do
    Agent.update(@name, fn koans -> [koan|koans] end)
  end

  defp koans do
    Agent.get(@name, fn koans -> koans end)
  end

  def run do
    koans |> Enum.reverse |> Enum.each(&exec/1)
  end

  defp exec({module, koan}) do
    try do
      apply(module, koan, [])
    rescue
      problem in [ExUnit.AssertionError, Koans.MeditateWarning] ->
        stop_to_learn(problem, koan, module)
    end
    success(module, koan)
  end

  defmacro think(message, lesson) do
    name = :"#{message}"
    quote do
      Module.put_attribute(__MODULE__, :meditation, unquote(message))
      Koans.add({__MODULE__, unquote(name)})
      def unquote(name)(), do: unquote(lesson)
    end
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
