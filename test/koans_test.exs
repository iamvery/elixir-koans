defmodule KoansTest do
  use ExUnit.Case
  use Koans

  @meditation "testing"

  test "__?" do
    assert_raise Koans.MeditateWarning, fn ->
      Koans.DSL.__?
    end
  end

  test "assert_?" do
    assert_raise Koans.MeditateWarning, fn ->
      Koans.DSL.assert_?
    end
  end
end
