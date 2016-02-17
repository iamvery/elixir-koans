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

  defmacro __using__([]) do
    quote do
      import ExUnit.Assertions
      import Koans, only: [think: 2, meditate: 1, __?: 0, assert_?: 1]
    end
  end

  def start do
    Agent.start_link(fn -> [] end, name: @name)
    System.at_exit(fn 0 -> run end)
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
    # TODO congratulate success
  end

  defmacro think(message, lesson) do
    name = :"#{message}"
    quote do
      Module.put_attribute(__MODULE__, :meditation, unquote(message))
      Koans.add({__MODULE__, unquote(name)})
      def unquote(name)(), do: unquote(lesson)
    end
  end

  def stop_to_learn(error, meditation, case) do
    Koans.Formatter.failure_message(error, meditation, case)
    |> IO.puts
    exit(:shutdown)
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
