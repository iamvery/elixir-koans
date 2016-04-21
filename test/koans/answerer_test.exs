defmodule KoansAnswererTest do
  use ExUnit.Case

  import Koans.Answerer

  test "value injected" do
    value_is_missing = quote do: __?
    {with_value, []} = inject(value_is_missing, [:lol])

    assert with_value == quote(do: :lol)
  end

  test "multiple values injected" do
    values_are_missing = quote do
      assert __?
      refute __?
    end
    {with_values, []} = inject(values_are_missing, [true, false])
    expected = quote do
      assert true
      refute false
    end

    assert with_values == expected
  end
end
