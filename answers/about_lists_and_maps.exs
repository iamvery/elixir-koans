defmodule Answers.AboutListsAndMaps do
  use Koans

  answer "Like maps, keyword lists are key-value pairs" do
    ["bar"]
  end

  answer "Keys may be repeated, but only the first is accessed" do
    ["bar"]
  end

  answer "You could access a second key by removing the first" do
    ["baz"]
  end

  answer "Keyword lists just special syntax for lists of two-element tuples" do
    [:foo, "bar"]
  end

  answer "But unlike maps, the keys in keyword lists must be atoms" do
    ["foo"]
  end

  answer "Lists must be pattern matched in whole" do
    [1, 3, [1,2]]
  end

  answer "Maps may be patterned matched in part" do
    ["Jay"]
  end

  answer "Conveniently keyword lists can be used for function options" do
    ["GOOD"]
  end

  answer "Actually function bodies are a sneaky use of keyword lists" do
    [:good]
  end

  answer "Turns out our beloved if statements are also using keyword lists" do
    [:this, :that]
  end
end
