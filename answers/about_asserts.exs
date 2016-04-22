defmodule Answers.AboutAsserts do
  use Koans

  answer "We shall contemplate truth by testing reality, via asserts." do
    [true]
  end

  answer "When reality lies, we shall refute truth" do
    [false]
  end

  answer "Assertions are defined by ExUnit, an Elixir testing library" do
    [true, false]
  end

  answer "Enlightenment may be more easily achieved with appropriate messages." do
    [true]
  end

  answer "To understand reality, we must compare our expectations against reality." do
    [2]
  end

  answer "Assertions are smart" do
    ["==", ">"]
  end

  answer "Some values are truthy; some values are falsy" do
    [assert, assert, refute]
  end
end

