defmodule KoansDSLTest do
  require Koans.DSL
  use ExUnit.Case

  @meditation "testing"

  test "__?" do
    assert_raise Koans.MeditateWarning, fn ->
      Koans.DSL.__?
    end
  end

  test "assert_?" do
    assert_raise Koans.MeditateWarning, fn ->
      Koans.DSL.assert_? _
    end
  end
end