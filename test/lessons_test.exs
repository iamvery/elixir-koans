defmodule LessonsTest do
  use ExUnit.Case

  test "lessons compile" do
    Koans.Lessons.load
    # no assertions needed here, compilation failure would cause a test failure
  end
end
