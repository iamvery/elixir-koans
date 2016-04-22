defmodule Answers.AboutMaps do
  use Koans

  answer "Maps are a key-value store" do
    ["Ryan", nil]
  end

  answer "Any value can be used as a key" do
    ["Ryan", true]
  end

  answer "There is more than one way to access a map" do
    ["Ryan", "programming"]
  end

  answer "You can ask a map about its keys" do
    [[:age, :name]]
  end

  answer "You can ask a map about its values" do
    [[27, "Ryan"]]
  end

  answer "You can ask a map if it has a key" do
    [true, false]
  end

  answer "Fetching a key works if the key exists..." do
    [{:ok, "Ryan"}]
  end

  answer "... but what happens if we try to fetch a non-existant key?" do
    [:error]
  end

  answer "You can also pop a key" do
    [10, %{}]
  end

  answer "Popping a non-existant key" do
    [nil, %{amount: 10}]
  end

  answer "Merging together two maps" do
    [%{name: "Ryan B.", age: 27, likes: "programming"}]
  end

  answer "Merging together two maps and doing something with their values" do
    [%{today: 30, yesterday: 25}]
  end

  answer "Dropping keys" do
    [%{name: "Ryan"}]
  end

  answer "There's more than one way to remove a key" do
    [%{name: "Ryan"}]
  end

  answer "Changing a value" do
    [%{name: "Ryan B.", age: 27}]
  end

  answer "Adding a new pair that doesn't exist" do
    [%{name: "Ryan", age: 27, likes: "Programming"}, %{name: "Ryan", age: 27}]
  end

  answer "Updating a key with a function" do
    [%{amount: 11}, %{amount: 10, other_amount: 10}]
  end

  answer "Updating keys that don't exist may not be desirable" do
    [%{amount: 11}, KeyError]
  end
end
