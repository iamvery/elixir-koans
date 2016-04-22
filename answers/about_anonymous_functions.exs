defmodule Answers.AboutAnonymousFunctions do
  use Koans

  answer "Declaring an anonymous function referenced by a_variable" do
    ["Here lies the body of the anonymous function!"]
  end

  answer "Anonymous function with parameter" do
    ["Hello John!"]
  end

  answer "Anonymous function short-hand" do
    ["Hello John!"]
  end

  answer "Anonymous function with multiple implementation body! Amazing matching power!" do
    ["Running body 1", "Running body 2"]
  end

  answer "Function as the argument of a function!" do
    [20]
  end
end
