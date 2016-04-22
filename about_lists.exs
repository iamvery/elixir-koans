defmodule AboutLists do
  use Koans

  think "Create your first list" do
    a_list = __?
    assert is_list(a_list)
  end

  think "Getting list length is a kernel feature" do
    a_list = [1, 2, 3]
    assert length(a_list) == __?
  end

  think "Elixir provides a special operator to concatenate lists" do
    assert [1, 2] ++ [3] == __?
  end

  think "Elixir provides a special operator to remove an element from a list" do
    assert [1, 2, 3] -- [2] == __?
  end

  think "Only the occurrence is removed with truncate operator" do
    assert [:foo, :bar, :foo] -- [:foo] == __?
  end

  @tag :skip
  think "The truncate operator does nothing when an element is not in the list" do
    assert_? [:foo, :bar] -- [:baz] == [:foo, :bar]
  end

  @tag :skip
  think "The in operator tests if an element is present in a list" do
    assert_? :bar in [:foo, :bar]
  end
end
