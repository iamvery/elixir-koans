defmodule Koans.Lessons do
  def all do
    [
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
  end

  def load do
    all |> Enum.each(&Code.load_file/1)
  end
end
