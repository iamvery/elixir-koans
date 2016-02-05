require Mix.Config

defmodule Mix.Tasks.Learn do
  use Mix.Task

  @shortdoc "Learn Elixir through meditation"

  def run(_) do
    Koans.start
    Code.load_file "about_koans.ex"
    Code.load_file("about_testing.exs")
    Code.load_file("about_numbers_and_booleans.exs")
    Code.load_file("about_strings.exs")
    Code.load_file("about_lists.exs")
    Code.load_file("about_enums.exs")
    Code.load_file("about_tuples.exs")
    Code.load_file("about_maps.exs")
    Code.load_file("about_anonymous_function.exs")
    Code.load_file("about_named_function.exs")
    Code.load_file("about_match_variables.exs")
  end
end
