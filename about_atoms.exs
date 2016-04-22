defmodule AboutAtoms do
  use Koans

  think "Atoms are sort of like strings" do
    adam = :human
    assert adam == __?
  end

  think "Strings can be converted to atoms, and vice versa" do
    assert String.to_atom("atomized") == __?
    assert Atom.to_string(:stringified) == __?
  end

  think "Atoms are often used as keys, because they're faster than strings" do
    map = %{name: "Jay"}
    list = [name: "Jay"]

    assert map[:name] == __?
    assert list[:name] == __?
  end

  think "Only atom keys may be accessed with dot syntax" do
    map = %{name: "Jay"}
    assert map.name == __?

    map = %{"name" => "Jay"}
    assert_raise KeyError, fn -> __? end
    assert map["name"] == __?
  end

  think "Dot syntax is stricter than access with brackets" do
    map = %{name: "Jay"}

    assert map[:age] == __?
    assert_raise KeyError, fn -> __? end
  end

  @tag :skip
  think "It is surprising to find out that booleans are atoms" do
    assert_? is_atom(true)
    assert_? is_atom(false)
    assert :true == __?
    assert :false == __?
  end

  @tag :skip
  think "Modules are also atoms" do
    assert_? is_atom(String)
    assert :"Elixir.String" == __?
    assert :"Elixir.String".upcase("hello") == __?
  end

  @tag :skip
  think "Atoms are used to access Erlang" do
    assert_? :erlang.is_list([])
    assert :lists.sort([2, 3, 1]) == __?
  end
end
