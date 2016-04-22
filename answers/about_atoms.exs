defmodule Answers.AboutAtoms do
  use Koans

  answer "Atoms are sort of like strings" do
    [:human]
  end

  answer "Strings can be converted to atoms, and vice versa" do
    [:atomized, "stringified"]
  end

  answer "Atoms are often used as keys, because they're faster than strings" do
    ["Jay", "Jay"]
  end

  answer "Only atom keys may be accessed with dot syntax" do
    ["Jay", map.name, "Jay"]
  end

  answer "Dot syntax is stricter than access with brackets" do
    [nil, map.age]
  end

  answer "It is surprising to find out that booleans are atoms" do
    [assert, assert, true, false]
  end

  answer "Modules are also atoms" do
    [assert, Elixir.String, "HELLO"]
  end

  answer "Atoms are used to access Erlang" do
    [assert, [1,2,3]]
  end
end
