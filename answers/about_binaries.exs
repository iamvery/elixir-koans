defmodule Answers.AboutBinaries do
  use Koans

  answer "A binary is a sequence of bytes" do
    [true]
  end

  answer "A binary's size is the number of bytes" do
    [3]
  end

  answer "Binaries can be contatenated" do
    [<<1,2,3,4>>]
  end

  answer "Every character has a unique number (unicode codepoint)" do
    [assert, assert, 99]
  end

  answer "Strings are binaries" do
    [true, "abc"]
  end

  answer "Thus strings can be concatenated" do
    ["Hello world"]
  end
end
