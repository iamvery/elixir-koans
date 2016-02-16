require Mix.Config

defmodule Mix.Tasks.Learn do
  use Mix.Task

  @shortdoc "Learn Elixir through meditation"

  def run(_) do
    Koans.start
    Code.load_file "about_koans.ex"
  end
end
