defmodule AboutLists do
  use Koans

  think "Create your first list" do
    a_list = []
    assert is_list(a_list)
  end

  think "Getting list length is a kernel feature" do
    a_list = [1, 2, 3]
    assert length(a_list) == 3
  end

  think "Elixir provide special operator to concatenate lists" do
    assert [1, 2] ++ [3] == [1,2,3]
  end

  think "Elixir provide special operator to remove element from list" do
    assert [1, 2, 3] -- [2] == [1,3]
  end

  think "Only first element is removed with truncate operator" do
    assert [:foo, :bar, :foo] -- [:foo] == [:bar, :foo]
  end

  think "Truncate operator do nothing when element not in list" do
    assert [:foo, :bar] -- [:baz] == [:foo, :bar]
  end

  think "The in operator test if element is present inner an enum" do
    assert :bar in [:foo, :bar]
  end
end
