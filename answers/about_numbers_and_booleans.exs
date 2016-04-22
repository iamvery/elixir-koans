defmodule Answers.AboutNumbersAndBooleans do
  use Koans

  answer "Basics numbers types" do
    [assert, refute, assert, refute]
  end

  answer "Is a hexadecimal number an integer?" do
    [assert]
  end

  answer "Answer to the Ultimate Question of Life, the Universe, and Everything" do
    [42]
  end

  answer "You can use _ as separator in integer" do
    [100000000]
  end

  answer "Integers and floats have value equality" do
    [assert]
  end

  answer "Integers and floats have value inequality" do
    [assert]
  end

  answer "Strict equality checks types" do
    [refute, assert]
  end

  answer "Strict inequality checks types" do
    [assert]
  end

  answer "Are integers booleans?" do
    [refute, refute]
  end

  answer "Boolean OR returns left side if true, otherwise right side" do
    [assert, assert, assert, refute]
  end

  answer "Boolean operators check their argument's type" do
    ["1"]
  end

  answer "Other binary operators are relaxed about their argument's type" do
    [42, 42, 84, nil]
  end
end
