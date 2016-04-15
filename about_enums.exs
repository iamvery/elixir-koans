defmodule AboutEnums do
  use Koans

  think "Do something with each element" do
    list = [__?, __?, __?]
    Enum.each(list, fn (x) -> is_integer(x) end)
  end

  think "Mapping over a list" do
    list = [1, 2, 3]
    assert Enum.map(list, __?) == [2, 3, 4]
    # Hint: Write a function!
  end

  think "Concatenation" do
    list_1 = [1, 2, 3]
    list_2 = [4, 5, 6]
    assert Enum.concat(list_1, list_2) == __?
  end

  think "Is an enumerable empty?" do
    assert_? Enum.empty?([1, 2, 3])
    assert_? Enum.empty?([])
  end

  think "Check if all items match" do
    list = [1, 2, 3]
    assert Enum.all?(list, fn (x) -> x < 4 end) == __?
  end

  think "Check if any items match" do
    list = [1, 2, 3]
    assert Enum.any?(list, fn (x) -> x < 2 end) == __?
  end

  think "Is it in the collection?" do
    list = [:a, :b, :c]
    assert Enum.member?(list, :d) == __?
  end

  think "Find an element at an index" do
    list = [:a, :b, :c, :d]
    assert Enum.at(list, 0) == __?
  end

  think "What happens if we look outside the list?" do
    list = [:a, :b, :c, :d]
    assert Enum.at(list, 5) == __?
  end

  think "It can take a default" do
    list = [:a, :b, :c]
    assert Enum.at(list, 5, :something) == __?
  end

  think "Fetching is similar to at" do
    list = [:a, :b, :c]
    assert Enum.fetch(list, 0) == __?
  end

  think "Fetching tells you if it can't find an element" do
    list = [:a, :b, :c]
    assert Enum.fetch(list, 4) == __?
  end

  think "Fetching will raise an exception if it can't find an element" do
    list = [:a, :b, :c]
    assert_raise __?, fn -> Enum.fetch!(list, 4) end
  end

  think "Find the first element that matches" do
    list = [1, 2, 3, 4]
    assert Enum.find(list, fn (x) -> x > 2 end) == __?
  end

  think "What happens when find can't find?" do
    list = [1, 2, 3, 4, 5]
    assert Enum.find(list, fn (x) -> x > 5 end) == __?
  end

  think "Find takes a default" do
    list = [1, 2, 3]
    assert Enum.find(list, 4, fn (x) -> x > 3 end) == __?
  end

  think "What index is this number at?" do
    list = [1, 2, 3]
    assert Enum.find_index(list, fn(x) -> x == 2 end) == __?
  end

  think "Find and manipulate a value" do
    list = [1, 2, 3]
    assert Enum.find_value(list, fn (x) -> rem(x, 2) == 1 end) == __?
  end

  think "Get each element with its index" do
    list = [:a, :b, :c]
    assert Enum.with_index(list) == __?
  end

  think "Chunking elements into group" do
    list = [1, 2, 3, 4, 5, 6]
    assert Enum.chunk(list, 2) == __?
  end

  think "Chunking elements in steps" do
    list = [1, 2, 3, 4, 5, 6]
    assert Enum.chunk(list, 2, 1) == __?
  end

  think "Chunking elements in steps with padding" do
    list = [1, 2, 3, 4, 5, 6]
    assert Enum.chunk(list, 3, 2, [7]) == __?
  end

  think "Chunking elements with a function" do
    list = [3, 4, 5, 6, 7, 8]
    assert Enum.chunk_by(list, fn (x) -> x > 5 end) == __?
  end

  think "Dropping elements" do
    list = [1, 2, 3, 4]
    assert Enum.drop(list, 2) == __?
    assert Enum.drop(list, 10) == __?
    assert Enum.drop(list, -1) == __?
  end

  think "Dropping while a condition is met" do
    list = [1, 2, 3, 4]
    assert Enum.drop_while(list, fn (x) -> x < 2 end) == __?
  end

  think "Filtering" do
    list = [1, 2, 3, 4]
    assert Enum.filter(list, fn (x) -> rem(x, 2) == 1 end) == __?
  end

  think "Filtering and mapping" do
    list = [1, 2, 3, 4]
    assert Enum.filter_map(list, fn (x) -> rem(x, 2) == 1 end, &(&1 * 2)) == __?
  end

  think "Flat mapping" do
    list = Enum.flat_map([{1, 3}, {4, 6}], fn({x, y}) -> x..y end)
    assert list == __?
  end

  think "Joining into a string" do
    list = [1, 2, 3]
    assert Enum.join(list) == __?
  end

  think "Joining with a separator" do
    list = [1, 2, 3]
    assert Enum.join(list, ",") == __?
  end

  think "Mapping and joining" do
    list = [1, 2, 3]
    assert Enum.map_join(list, fn (x) -> x * 2 end) == __?
  end

  think "Map reduce" do
    list = [4, 5, 6]
    assert Enum.map_reduce(list, 0, fn (x, acc) -> {x * 2, x + acc} end) == __?
  end

  think "Zipping collections together" do
    list_1 = [1, 2, 3]
    list_2 = [4, 5, 6]
    assert Enum.zip(list_1, list_2) == __?
  end

  think "Find the max value in a collection" do
    list = [6, 1, 5, 2, 4, 3]
    assert Enum.max(list) == __?
  end

  think "Find the max value using a function" do
    list = ["the", "longest", "word", "is", "expected"]
    assert Enum.max_by(list, &String.length(&1)) == __?
  end

  think "Find the minimum value in a collection" do
    list = [6, 1, 5, 2, 4, 3]
    assert Enum.min(list) == __?
  end

  think "Find the minimum value using a function" do
    list = ["the", "shortest", "word", "is", "expected"]
    assert Enum.min_by(list, &String.length(&1)) == __?
  end

  defp numbers, do: 1..10

  think "Partitioning" do
    {left, right} = Enum.partition(numbers, fn(x) -> rem(x, 2) == 1 end)
    assert left == __?
    assert right == __?
  end

  think "Reduction" do
    result = Enum.reduce(numbers, 0, fn (x, acc) -> acc + x end)
    assert result == __?
  end

  think "Rejection" do
    result = Enum.reject(numbers, fn(x) -> rem(x, 2) == 1 end)
    assert result == __?
  end

  think "Reversal" do
    assert Enum.reverse(numbers) == __?
  end

  think "Shuffle" do
    assert_? Enum.shuffle(numbers) == numbers
    # Note: It's possible for this to fail. Does shuffle guarantee difference?
  end

  think "Slicing" do
    assert Enum.slice(numbers, 2, 2) == __?
  end

  think "Slicing beyond length" do
    assert Enum.slice(numbers, 2, 100) == __?
  end

  think "Sorting" do
    numbers = [1, 6, 3, 8, 4, 2, 9, 5, 7]
    assert Enum.sort(numbers) == __?
  end

  think "Unique elements" do
    numbers = [1, 1, 2, 3, 3, 4]
    assert Enum.uniq(numbers) == __?
  end

  think "Splitting" do
    numbers = [1, 2, 3, 4]
    {left, right} = Enum.split(numbers, 2)
    assert left == __?
    assert right == __?
  end

  think "Splitting with function" do
    {left, right} = Enum.split_while(numbers, fn (x) -> x < 5 end)
    assert left == __?
    assert right == __?
  end

  think "Take some elements" do
    assert Enum.take(numbers, 2) == __?
  end

  think "Take some elements from the end" do
    assert Enum.take(numbers, -2) == __?
  end

  think "Take every few elements" do
    assert Enum.take_every(numbers, 3) == __?
  end

  think "Take while function is true" do
    assert Enum.take_while(numbers, fn (x) -> x < 5 end) == __?
  end
end
