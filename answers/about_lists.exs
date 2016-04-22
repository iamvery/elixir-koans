defmodule Answers.AboutLists do
  use Koans

  answer "Create your first list" do
    [[1,2,3]]
  end

  answer "Getting list length is a kernel feature" do
    [3]
  end

  answer "Elixir provides a special operator to concatenate lists" do
    [[1,2,3]]
  end

  answer "Elixir provides a special operator to remove an element from a list" do
    [[1,3]]
  end

  answer "Only the occurrence is removed with truncate operator" do
    [[:bar, :foo]]
  end

  answer "The truncate operator does nothing when an element is not in the list" do
    [assert]
  end

  answer "The in operator tests if an element is present in a list" do
    [assert]
  end
end
