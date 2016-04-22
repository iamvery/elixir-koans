defmodule Answers.AboutNamedFunctions do
  use Koans

  answer "Calling a named function" do
    ["Hello world!"]
  end

  answer "A function with the same name, but different number of arguments is a different function" do
    ["Hello world from France!"]
  end

  answer "You can reference a named function with &" do
    ["ORLY"]
  end

  answer "Pattern matching on a named function" do
    [6]
  end

  answer "Functions can have guard clauses" do
    ["4.2 is a float", "atom is an atom", "5 is a number"]
  end
end
