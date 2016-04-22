require Mix.Config

defmodule Mix.Tasks.Learn do
  use Mix.Task

  @shortdoc "Learn Elixir through meditation"

  def run(_) do
    Application.ensure_all_started(:koans)
    Koans.Lessons.load
    Koans.Runner.run
  end
end
