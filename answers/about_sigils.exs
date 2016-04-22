defmodule Answers.AboutSigils do
  use Koans

  answer "The ~s sigil is a different way of expressing string literals" do
    ["This is a string"]
  end

  answer "Sigils are useful to avoid escaping quotes in strings" do
    [~s("Welcome to the jungle", they said.)]
  end

  answer "Sigils can use different delimiters" do
    [assert]
  end

  answer "The lowercase ~s sigil supports string interpolation" do
    ["1 + 1 = 2"]
  end

  answer "The ~S sigil is similar to ~s but doesn't do interpolation" do
    ["1 + 1 = #\{1+1}"]
  end

  answer "~w is another sigil, it creates word lists" do
    ["Hello", "world"]
  end

  answer "~w also allows interpolation" do
    ["Hello", "123"]
  end

  answer "~W behaves to ~w as ~S behaves to ~s" do
    [~S(#{1+1})]
  end
end

