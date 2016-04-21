defmodule KoansAnswererTest do
  use ExUnit.Case

  import Koans.Answerer

  test "value injected" do
    value_is_missing = quote do: __?
    {with_value, []} = inject(value_is_missing, [:lol])

    assert with_value == quote(do: :lol)
  end
end
