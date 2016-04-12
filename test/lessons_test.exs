defmodule LessonsTest do
  use ExUnit.Case

  test "lessons compile" do
    Koans.load
    # no assertions needed here, compilation failure would cause a test failure
  end

  def float?(n) when is_float(n), do: true
  def float?(_), do: false

  test "variable is used" do
    num = 12.3
    assert Koans.Check.float?(num)
  end
end
