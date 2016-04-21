defmodule KoansDSLTest do
  require Koans.DSL
  use ExUnit.Case

  @meditation "testing"

  Koans.DSL.think "lolwat" do
    :hahaha
  end

  test "think/2 defines a method on the module" do
    assert lolwat == :hahaha
  end

  # TODO skipping

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
