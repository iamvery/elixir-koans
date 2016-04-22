defmodule Answers.AboutEnums do
  use Koans

  answer "Do something with each element" do
    [1,2,3]
  end

  answer "Mapping over a list" do
    [fn n -> n+1 end]
  end

  answer "Concatenation" do
    [[1,2,3,4,5,6]]
  end

  answer "Is an enumerable empty?" do
    [refute, assert]
  end

  answer "Check if all items match" do
    [true]
  end

  answer "Check if any items match" do
    [true]
  end

  answer "Is it in the collection?" do
    [false]
  end

  answer "Find an element at an index" do
    [:a]
  end

  answer "What happens if we look outside the list?" do
    [nil]
  end

  answer "It can take a default" do
    [:something]
  end

  answer "Fetching is similar to at" do
    [{:ok, :a}]
  end

  answer "Fetching tells you if it can't find an element" do
    [:error]
  end

  answer "Fetching will raise an exception if it can't find an element" do
    [Enum.OutOfBoundsError]
  end

  answer "Find the first element that matches" do
    [3]
  end

  answer "What happens when find can't find?" do
    [nil]
  end

  answer "Find takes a default" do
    [4]
  end

  answer "What is the index of an element?" do
    [1]
  end

  answer "Find and manipulate a value" do
    [true]
  end

  answer "Get each element with its index" do
    [[a: 0, b: 1, c: 2]]
  end

  answer "Chunking elements into groups" do
    [[[1,2],[3,4],[5,6]]]
  end

  answer "Chunking elements in steps" do
    [[[1,2],[2,3],[3,4],[4,5],[5,6]]]
  end

  answer "Chunking elements in steps with padding" do
    [[[1,2,3],[3,4,5],[5,6,7]]]
  end

  answer "Chunking elements with a function" do
    [[[3,4,5],[6,7,8]]]
  end

  answer "Dropping elements" do
    [[3,4], [], [1,2,3]]
  end

  answer "Dropping while a condition is met" do
    [[2,3,4]]
  end

  answer "Filtering" do
    [[1,3]]
  end

  answer "Filtering and mapping" do
    [[2,6]]
  end

  answer "Flat mapping" do
    [[1,2,3,4,5,6]]
  end

  answer "Joining into a string" do
    ["123"]
  end

  answer "Joining with a separator" do
    ["1,2,3"]
  end

  answer "Mapping and joining" do
    ["246"]
  end

  answer "Map reduce" do
    [{[8,10,12], 15}]
  end

  answer "Zipping collections together" do
    [[{1,4},{2,5},{3,6}]]
  end

  answer "Find the max value in a collection" do
    [6]
  end

  answer "Find the max value using a function" do
    ["expected"]
  end

  answer "Find the minimum value in a collection" do
    [1]
  end

  answer "Find the minimum value using a function" do
    ["is"]
  end

  answer "Partitioning" do
    [[1,3,5,7,9],[2,4,6,8,10]]
  end

  answer "Reduction" do
    [55]
  end

  answer "Rejection" do
    [[2,4,6,8,10]]
  end

  answer "Reversal" do
    [[10,9,8,7,6,5,4,3,2,1]]
  end

  answer "Shuffle" do
    [refute]
  end

  answer "Slicing" do
    [[3,4]]
  end

  answer "Slicing beyond length" do
    [[3,4,5,6,7,8,9,10]]
  end

  answer "Sorting" do
    [[1,2,3,4,5,6,7,8,9]]
  end

  answer "Unique elements" do
    [[1,2,3,4]]
  end

  answer "Splitting" do
    [[1,2],[3,4]]
  end

  answer "Splitting with function" do
    [[1,2,3,4],[5,6,7,8,9,10]]
  end

  answer "Take some elements" do
    [[1,2]]
  end

  answer "Take some elements from the end" do
    [[9,10]]
  end

  answer "Take every few elements" do
    [[1,4,7,10]]
  end

  answer "Take while function is true" do
    [[1,2,3,4]]
  end
end
