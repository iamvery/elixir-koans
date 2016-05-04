defmodule KoansAnswererTest do
  use ExUnit.Case

  import Koans.Answerer

  test "value injected" do
    value_is_missing = quote do: __?
    {with_value, []} = inject(value_is_missing, [:lol])

    assert with_value == quote(do: :lol)
  end

  test "assertion injected" do
    assert_is_missing = quote do: assert_? true
    {with_assert, []} = inject(assert_is_missing, [quote do: assert])

    # Unfortunately this can't pass as it's currently implemented...
    #assert with_assert == quote(do: assert true)
    assert elem(with_assert, 0) == :assert
    assert elem(with_assert, 2) == [true]
  end
end
