defmodule AboutEnums do
  use Koans

  think "Do something with each element" do
    list = [1, 2, 3]
    Enum.each(list, fn (x) -> assert x end)
  end

  think "Mapping over a list" do
    list = [1, 2, 3]
    assert Enum.map(list, fn (x) -> x+1 end) == [2, 3, 4]
    # Hint: Write a function!
  end

  think "concatenation" do
    list_1 = [1, 2, 3]
    list_2 = [4, 5, 6]
    assert Enum.concat(list_1, list_2) == [1,2,3,4,5,6]
  end

  think "Empty, or not?" do
    list = [1, 2, 3]
    assert Enum.empty?(list) == false
  end

  think "Not empty?" do
    list = []
    assert Enum.empty?(list) == true
  end

  think "Check if all items match" do
    list = [1, 2, 3]
    assert Enum.all?(list, fn (x) -> x < 4 end) == true
  end

  think "Check if any items match" do
    list = [1, 2, 3]
    assert Enum.any?(list, fn (x) -> x < 2 end) == true
  end

  think "Is it there, or not?" do
    list = [:a, :b, :c]
    assert Enum.member?(list, :d) == false
  end

  think "What element is first?" do
    list = [:a, :b, :c, :d]
    assert Enum.at(list, 0) == :a
  end

  think "What happens if we look outside the list?" do
    list = [:a, :b, :c, :d]
    assert Enum.at(list, 5) == nil
  end

  think "at can take a default" do
    list = [:a, :b, :c]
    assert Enum.at(list, 5, :something) == :something
  end

  think "fetch is like at" do
    list = [:a, :b, :c]
    assert Enum.fetch(list, 0) == {:ok, :a}
  end

  think "fetch tells you if it can't find an element" do
    list = [:a, :b, :c]
    assert Enum.fetch(list, 4) == :error
  end

  think "fetch! will raise an exception if it can't find an element" do
    list = [:a, :b, :c]
    assert_raise Enum.OutOfBoundsError, fn -> Enum.fetch!(list, 4) end
  end

  think "find the first element which matches" do
    list = [1, 2, 3, 4]
    assert Enum.find(list, fn (x) -> x > 2 end) == 3
  end

  think "what happens when find can't find?" do
    list = [1, 2, 3, 4, 5]
    assert Enum.find(list, fn (x) -> x > 5 end) == nil
  end

  think "find takes a default" do
    list = [1, 2, 3]
    assert Enum.find(list, 4, fn (x) -> x > 3 end) == 4
  end

  think "what index is this number at?" do
    list = [1, 2, 3]
    assert Enum.find_index(list, fn(x) -> x == 2 end) == 1
  end

  think "finding and manipulating a value" do
    list = [1, 2, 3]
    # TODO what even is this example?
    assert Enum.find_value(list, fn (x) -> rem(x, 2) == 1 end) == true
  end

  think "each element with its index" do
    list = [:a, :b, :c]
    assert Enum.with_index(list) == [a: 0, b: 1, c: 2]
  end

  think "enums can be chunked" do
    list = [1, 2, 3, 4, 5, 6]
    assert Enum.chunk(list, 2) == [[1,2],[3,4],[5,6]]
  end

  think "chunking can happen in steps" do
    list = [1, 2, 3, 4, 5, 6]
    assert Enum.chunk(list, 2, 1) == [[1,2],[2,3],[3,4],[4,5],[5,6]]
  end

  think "chunking can have padding" do
    list = [1, 2, 3, 4, 5, 6]
    assert Enum.chunk(list, 3, 2, [7]) == [[1,2,3],[3,4,5],[5,6,7]]
  end

  think "chunking by unique values" do
    list = [3, 4, 5, 6, 7, 8]
    assert Enum.chunk_by(list, fn (x) -> x > 5 end) == [[3,4,5],[6,7,8]]
  end

  think "dropping items" do
    list = [1, 2, 3, 4]
    assert Enum.drop(list, 2) == [3,4]
  end

  think "dropping a lot of items" do
    list = [1, 2, 3, 4]
    assert Enum.drop(list, 10) == []
  end

  think "dropping with negative numbers" do
    list = [1, 2, 3, 4]
    assert Enum.drop(list, -1) == [1,2,3]
  end

  think "dropping while a condition is met" do
    list = [1, 2, 3, 4]
    assert Enum.drop_while(list, fn (x) -> x < 2 end) == [2,3,4]
  end

  think "filtering" do
    list = [1, 2, 3, 4]
    assert Enum.filter(list, fn (x) -> rem(x, 2) == 1 end) == [1,3]
  end

  think "filtering + mapping" do
    list = [1, 2, 3, 4]
    assert Enum.filter_map(list, fn (x) -> rem(x, 2) == 1 end, &(&1 * 2)) == [2,6]
  end

  think "flat mapping" do
    list = Enum.flat_map([{1, 3}, {4, 6}], fn({x, y}) -> x..y end)
    assert list == [1,2,3,4,5,6]
  end

  think "joining" do
    list = [1, 2, 3]
    assert Enum.join(list) == "123"
  end

  think "joining with a separator" do
    list = [1, 2, 3]
    assert Enum.join(list, ",") == "1,2,3"
  end

  think "mapping and joining" do
    list = [1, 2, 3]
    assert Enum.map_join(list, fn (x) -> x * 2 end) == "246"
  end

  think "map reduce" do
    list = [4, 5, 6]
    assert Enum.map_reduce(list, 0, fn (x, acc) -> {x * 2, x + acc} end) == {[8,10,12], 15}
  end

  think "zipping" do
    list_1 = [1, 2, 3]
    list_2 = [4, 5, 6]
    assert Enum.zip(list_1, list_2) == [{1,4},{2,5},{3,6}]
  end

  think "what's the maximum value in this list?" do
    list = [6, 1, 5, 2, 4, 3]
    assert Enum.max(list) == 6
  end

  think "getting the maximum by function" do
    list = ["the", "longest", "word", "is", "expected"]
    assert Enum.max_by(list, &String.length(&1)) == "expected"
  end

  think "what's the minimum value in this list?" do
    list = [6, 1, 5, 2, 4, 3]
    assert Enum.min(list) == 1
  end

  think "getting the minimum by function" do
    list = ["the", "shortest", "word", "is", "expected"]
    assert Enum.min_by(list, &String.length(&1)) == "is"
  end

  defp numbers, do: 1..10

  think "partitioning" do
    {left, right} = Enum.partition(numbers, fn(x) -> rem(x, 2) == 1 end)
    assert left == [1,3,5,7,9]
    assert right == [2,4,6,8,10]
  end

  think "reduction" do
    result = Enum.reduce(numbers, 0, fn (x, acc) -> acc + x end)
    assert result == 55
  end

  think "rejection" do
    result = Enum.reject(numbers, fn(x) -> rem(x, 2) == 1 end)
    assert result == [2,4,6,8,10]
  end

  think "reversal" do
    assert Enum.reverse(numbers) == [10,9,8,7,6,5,4,3,2,1]
  end

  think "shuffle" do
    # TODO chance of failure here as shuffle might... not change the list
    refute Enum.shuffle(numbers) == numbers
  end

  think "slicing" do
    assert Enum.slice(numbers, 2, 2) == [3,4]
  end

  think "slicing goes too far" do
    assert Enum.slice(numbers, 2, 100) == [3,4,5,6,7,8,9,10]
  end

  think "sorting" do
    numbers = [1, 6, 3, 8, 4, 2, 9, 5, 7]
    assert Enum.sort(numbers) == [1,2,3,4,5,6,7,8,9]
  end

  think "unique items only, please" do
    numbers = [1, 1, 2, 3, 3, 4]
    assert Enum.uniq(numbers) == [1,2,3,4]
  end

  think "splitting" do
    numbers = [1, 2, 3, 4]
    {left, right} = Enum.split(numbers, 2)
    assert left == [1,2]
    assert right == [3,4]
  end

  think "splitting while function is true" do
    {left, right} = Enum.split_while(numbers, fn (x) -> x < 5 end)
    assert left == [1,2,3,4]
    assert right == [5,6,7,8,9,10]
  end

  think "taking some items" do
    assert Enum.take(numbers, 2) == [1,2]
  end

  think "taking some items the other way" do
    assert Enum.take(numbers, -2) == [9,10]
  end

  think "taking every so often" do
    assert Enum.take_every(numbers, 3) == [1,4,7,10]
  end

  think "taking while we can" do
    assert Enum.take_while(numbers, fn (x) -> x < 5 end) == [1,2,3,4]
  end
end
