require Mix.Config

defmodule Mix.Tasks.Learn do
  use Mix.Task

  @shortdoc "Learn Elixir through meditation"

  def run(_) do
    Application.ensure_all_started(:koans)
    System.at_exit(fn 0 -> Koans.Runner.run end)
    Koans.Lessons.load
  end
end
