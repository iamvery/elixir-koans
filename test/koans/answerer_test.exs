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

  test "handles basic values" do
    quoted = quote do
      :foo
    end
    {quoted, _} = inject(quoted, [nil])
    expected = quote do
      :foo
    end

    assert quoted == expected
  end

  test "handles missing values in literal tuples" do
    quoted = quote do
      {__?, __?}
    end
    {with_values, []} = inject(quoted, [:foo, :bar])
    expected = quote do
      {:foo, :bar}
    end

    assert with_values == expected
  end
end
