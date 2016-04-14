defmodule AboutMaps do
  use Koans

  think "Maps are a key-value store" do
    map = %{name: "Ryan", age: 27}
    assert map[:name] == __?
    assert map[:likes] == __?
  end

  think "Keys can be any value" do
    map = %{"name" => "Ryan", {:ok} => true}
    assert map["name"] == __?
    assert map[{:ok}] == __?
  end

  think "There is more than one way to access a map" do
    map = %{name: "Ryan", age: 27}
    assert Map.get(map, :name) == __?
    assert Map.get(map, :likes, "programming") == __?
  end

  think "You can ask a map about its keys" do
    map = %{name: "Ryan", age: 27}
    assert Map.keys(map) == __?
    # Further meditation:
    # Why are keys not returned in the order in which they're specified?
  end

  think "You can ask a map about its values" do
    map = %{name: "Ryan", age: 27}
    assert Map.values(map) == __?
  end

  think "You can ask a map if it has a key" do
    map = %{name: "Ryan", age: 27}
    assert Map.has_key?(map, :name) == __?
    assert Map.has_key?(map, :likes) == __?
  end

  think "Fetching a key works if the key exists..." do
    map = %{name: "Ryan", age: 27}
    assert Map.fetch(map, :name) == __?
  end

  think "... but what happens if we try to fetch a non-existant key?" do
    map = %{name: "Ryan", age: 27}
    assert Map.fetch(map, :likes) == __?
  end

  think "You can also pop a key" do
    map = %{amount: 10}
    {value, map} = Map.pop(map, :amount)
    assert value == __?
    assert map == __?
  end

  think "Popping a non-existant key" do
    map = %{amount: 10}
    {value, map} = Map.pop(map, :age)
    assert value == __?
    assert map == __?
  end

  think "Merging together two maps" do
    map_1 = %{name: "Ryan", age: 27}
    map_2 = %{name: "Ryan B.", likes: "programming"}
    assert Map.merge(map_1, map_2) == __?
  end

  think "Merging together two maps and doing something with their values" do
    map_1 = %{today: 10, yesterday: 20}
    map_2 = %{today: 20, yesterday: 5}

    assert Map.merge(map_1, map_2, fn (_k, v1, v2) -> v1 + v2 end) == __?
  end

  think "Dropping keys" do
    map = %{name: "Ryan", age: 27}
    assert Map.drop(map, [:age]) == __?
  end

  think "There's more than one way to remove a key" do
    map = %{name: "Ryan", age: 27}
    assert Map.delete(map, :age) == __?
  end

  think "Changing a value" do
    map = %{name: "Ryan", age: 27}
    assert Map.put(map, :name, "Ryan B.") == __?
  end

  think "Adding a new pair that doesn't exist" do
    map = %{name: "Ryan", age: 27}
    assert Map.put_new(map, :likes, "Programming") == __?
    # Distinctly different from Map.put/3
    assert Map.put_new(map, :name, "Ryan B.") == __?
  end

  think "Updating a key with a function" do
    map = %{amount: 10}
    assert Map.update(map, :amount, 0, fn (x) -> x + 1 end) == __?
    assert Map.update(map, :other_amount, 10, fn (x) -> x + 1 end) == __?
  end

  think "Updating keys that don't exist may not be desirable" do
    map = %{amount: 10}
    assert Map.update!(map, :amount, fn (x) -> x + 1 end) == __?
    assert_raise __?, fn -> Map.update!(map, :other_amount, fn (x) -> x + 1 end) end
  end
end
