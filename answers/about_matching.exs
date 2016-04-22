defmodule Answers.AboutMatching do
  use Koans

  answer "The match operator (=) binds values on the right to variables on the left" do
    [1]
  end

  answer "It matches patterns in data structures" do
    [1,2,4,5,6]
  end

  answer "You can ignore values in the match" do
    ["Keep me"]
  end

  answer "The sides must match" do
    [1, 1]
  end

  answer "It raises an error when the match fails" do
    [2]
  end

  answer "Matched values overwrite variable values" do
    [1, 2]
  end

  answer "Values can be pinned to prevent them from being overwritten" do
    [2, [3,4]]
  end

  answer "Matching a list inside a list" do
    [["Hello", "World!"]]
  end

  answer "Matching a tuple" do
    [12]
  end

  answer "Matching the head and tail of a list" do
    [1, [2,3]]
  end
end
