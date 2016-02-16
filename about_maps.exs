defmodule AboutMaps do
  use Koans

  think "maps are a key-value store" do
    map = %{name: "Ryan", age: 27}
    assert map[:name] == "Ryan"
    assert map[:likes] == nil
  end

  think "keys can be more than atoms" do
    map = %{"name" => "Ryan"}
    assert map["name"] == "Ryan"
  end

  think "there is more than one way to access a map" do
    map = %{name: "Ryan", age: 27}
    assert Map.get(map, :name) == "Ryan"
    assert Map.get(map, :likes, "programming") == "programming"
  end

  think "you can ask a map about its keys" do
    map = %{name: "Ryan", age: 27}
    assert Map.keys(map) == [:age, :name]
    # Further meditation:
    # Why are keys not returned in the order in which they're specified?
  end

  think "You can ask a map about its values" do
    map = %{name: "Ryan", age: 27}
    assert Map.values(map) == [27, "Ryan"]
  end

  think "you can ask a map if it has a key" do
    map = %{name: "Ryan", age: 27}
    assert Map.has_key?(map, :name) == true
    assert Map.has_key?(map, :likes) == false
  end

  think "fetching a key works if the key exists..." do
    map = %{name: "Ryan", age: 27}
    assert Map.fetch(map, :name) == {:ok, "Ryan"}
  end

  think "... but what happens if we try to fetch a non-existant key?" do
    map = %{name: "Ryan", age: 27}
    assert Map.fetch(map, :likes) == :error
  end

  think "you can also pop a key" do
    map = %{amount: 10}
    {value, map} = Map.pop(map, :amount)
    assert value == 10
    assert map == %{}
  end

  think "popping a non-existant key" do
    map = %{amount: 10}
    { value, map } = Map.pop(map, :age)
    assert value == nil
    assert map == %{amount: 10}
  end

  think "merging together two maps" do
    map_1 = %{name: "Ryan", age: 27}
    map_2 = %{name: "Ryan B.", likes: "programming"}
    assert Map.merge(map_1, map_2) == %{name: "Ryan B.", age: 27, likes: "programming"}
  end

  think "merging together two maps and doing math on their values" do
    map_1 = %{today: 10, yesterday: 20}
    map_2 = %{today: 20, yesterday: 5}

    assert Map.merge(map_1, map_2, fn (_k, v1, v2) -> v1 + v2 end) == %{today: 30, yesterday: 25}
  end

  think "dropping a key" do
    map = %{name: "Ryan", age: 27}
    assert Map.drop(map, [:age]) == %{name: "Ryan"}
  end

  think "there's more than one way to remove a key" do
    map = %{name: "Ryan", age: 27}
    assert Map.delete(map, :age) == %{name: "Ryan"}
  end

  think "changing a key in a map" do
    map = %{name: "Ryan", age: 27}
    assert Map.put(map, :name, "Ryan B.") == %{name: "Ryan B.", age: 27}
  end

  think "putting a new key into a map" do
    map = %{name: "Ryan", age: 27}
    assert Map.put_new(map, :likes, "Programming") == %{name: "Ryan", age: 27, likes: "Programming"}
    # Distinctly different from Map.put/3
    assert Map.put_new(map, :name, "Ryan B.") == %{name: "Ryan", age: 27}
  end

  think "updating a key in a map" do
    map = %{amount: 10}
    assert Map.update(map, :amount, 0, fn (x) -> x + 1 end) == %{amount: 11}
    assert Map.update(map, :other_amount, 10, fn (x) -> x + 1 end) == %{amount: 10, other_amount: 10}
  end

  think "adding keys that don't exist may not be desirable" do
    map = %{amount: 10}
    assert Map.update!(map, :amount, fn (x) -> x + 1 end) == %{amount: 11}
    assert_raise KeyError, fn -> Map.update!(map, :other_amount, fn (x) -> x + 1 end) end
  end
end
