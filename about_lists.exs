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

  think "Elixir provide special operator to concatenate lists" do
    assert [1, 2] ++ [3] == __?
  end

  think "Elixir provide special operator to remove element from list" do
    assert [1, 2, 3] -- [2] == __?
  end

  think "Only first element is removed with truncate operator" do
    assert [:foo, :bar, :foo] -- [:foo] == __?
  end

  think "Truncate operator do nothing when element not in list" do
    assert_? [:foo, :bar] -- [:baz] == [:foo, :bar]
  end

  think "The in operator test if element is present inner an enum" do
    assert_? :bar in [:foo, :bar]
  end
end
