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

  Koans.DSL.think "lolwat" do
    :hahaha
  end

  test "think/2 defines a method on the module" do
    assert lolwat == :hahaha
  end

  Koans.DSL.answer "answered" do
    [true, false]
  end
  Koans.DSL.think "answered" do
    assert __?
    refute __?
  end

  test "answer/2 provides answers which are injected into the lesson when it's defined" do
    answered
  end

  # TODO skipping
end
