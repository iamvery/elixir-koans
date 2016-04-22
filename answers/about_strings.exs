defmodule Answers.AboutStrings do
  use Koans

  answer "Creating a new string" do
    ["hello world!"]
  end

  answer "Values can be interpolated into strings" do
    ["1 + 1 = 2"]
  end

  answer "How long is a piece of string?" do
    [11]
  end

  answer "What does the string start with?" do
    [true, true, false]
  end

  answer "What does the string end with?" do
    [true, true, false]
  end

  answer "Does a string contain something?" do
    [true, true, false]
  end

  answer "Accessing letters by their positions" do
    ["l", nil]
  end

  answer "Slicing a string" do
    ["world", "ld!", "", "", "Hello "]
  end

  answer "Capitalization" do
    ["Hello world!"]
  end

  answer "Upcase" do
    ["HELLO WORLD!"]
  end

  answer "Downcase" do
    ["speak quietly"]
  end

  answer "Reversing a string" do
    ["backwards words"]
  end

  answer "Say it again" do
    ["repeat thisrepeat thisrepeat this"]
  end

  answer "Stripping on the left" do
    ["abc  "]
  end

  answer "Stripping on the left with specific characters" do
    ["  abc  $"]
  end

  answer "Stripping on the right" do
    ["  abc"]
  end

  answer "Stripping on the right with specific character" do
    ["  abc  "]
  end

  answer "Stripping on both sides" do
    ["abc"]
  end

  answer "Stripping on both sides with a specific character" do
    ["  abc  "]
  end

  answer "Left justification" do
    ["2  "]
  end

  answer "Left justification with a specific character" do
    ["200"]
  end

  answer "Right justification" do
    ["  2"]
  end

  answer "Right justification with a specific character" do
    ["007"]
  end

  answer "Converting to an integer" do
    [10, " 10"]
  end

  answer "Converting to an integer using a different base" do
    [17, 3]
  end

  answer "Converting to a float" do
    [10.99, " 1.2"]
  end
end
