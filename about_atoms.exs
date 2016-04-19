defmodule AboutAtoms do
  use Koans

  think "Atoms are sort of like strings" do
    adam = :human

    assert __? == adam
  end

  think "Atoms are often used as keys, because they're faster than strings" do
    map = %{name: "Jay"}
    list = [name: "Jay"]

    assert __? == map[:name]
    assert __? == list[:name]
  end

  think "Only atom keys may be accessed with dot syntax" do
    map = %{name: "Jay"}
    assert map.name == __?

    map = %{"name" => "Jay"}
    attempt = fn -> __? end
    assert_raise KeyError, "key :name not found in: %{\"name\" => \"Jay\"}", attempt
  end

  think "Dot syntax is stricter than access with brackets" do
    map = %{name: "Jay"}
    bracket_access = fn -> map[:age] end
    dot_access     = fn -> map.age end

    assert bracket_access.() == __?
    assert_raise __?, "key :age not found in: %{name: \"Jay\"}", dot_access
  end

  think "It is surprising to find out that booleans are atoms" do
    assert_? Koans.Check.atom?(true)
    assert_? Koans.Check.atom?(false)
    assert __? == :true
    assert __? == :false
  end

  think "Modules are also atoms" do
    assert_? Koans.Check.atom?(String)
    assert __? == :"Elixir.String"
    assert __? == :"Elixir.String".upcase("hello")
  end

  think "Atoms are used to access Erlang" do
    assert_? :erlang.is_list([])
    assert __? == :lists.sort([2, 3, 1])
  end
end
