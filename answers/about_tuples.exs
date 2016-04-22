defmodule Answers.AboutTuples do
  use Koans

  answer "Getting tuples size is a kernel feature" do
    [2]
  end

  answer "Can reach tuple element with index" do
    [:foo]
  end

  answer "In erlang tuples and lists start at index 1, which is different in Elixir" do
    [1]
  end

  answer "Can set a tuple element" do
    [:foo, :baz]
  end

  answer "Setting a tuple element that does not exist raises an argument error" do
    [2]
  end

  answer "Insert an element at a position" do
    [:baz]
  end

  answer "Inserting a tuple element raises an argument error if index is invalid" do
    [-1]
  end

  answer "The building blocks of Elixir are tuples of three elements" do
    [true, 3]
  end

  answer "We can use tuples to define blocks of Elixir code" do
    [{1,2,3}]
  end

  answer "Are tuples enumerable?" do
    [Protocol.UndefinedError]
  end
end
