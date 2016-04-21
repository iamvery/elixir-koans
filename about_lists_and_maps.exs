defmodule AboutListsAndMaps do
  use Koans

  think "Like maps, keyword lists are key-value pairs" do
    kw_list = [foo: "bar"]

    assert kw_list[:foo] == __?
  end

  think "Keys may be repeated, but only the first is accessed" do
    kw_list = [foo: "bar", foo: "baz"]

    assert kw_list[:foo] == __?
  end

  think "You could access a second key by removing the first" do
    kw_list = [foo: "bar", foo: "baz"]
    [_|kw_list] = kw_list

    assert kw_list[:foo] == __?
  end

  think "Keyword lists just special syntax for lists of two-element tuples" do
    assert [foo: "bar"] == [{__?, __?}]
  end

  think "But unlike maps, the keys in keyword lists must be atoms" do
    not_kw_list = [{"foo", "bar"}]

    assert_raise ArgumentError, fn -> not_kw_list[__?] end
  end

  think "Lists must be pattern matched in whole" do
    list = [1, 2, 3]
    [a, _, c] = list

    assert a == __? and c == __?
    assert_raise MatchError, fn -> __? = list end
  end

  think "Maps may be patterned matched in part" do
    %{name: name} = %{name: "Jay", age: 29}

    assert name == __?
  end

  think "Conveniently keyword lists can be used for function options" do
    transform = fn str, opts ->
      if opts[:upcase], do: String.upcase(str)
    end

    assert transform.("good", upcase: true) == __?
  end

  def foo(kw_list), do: kw_list

  think "Actually function bodies are a sneaky use of keyword lists" do
    list = foo do
      :good
    end

    assert list == [do: __?]
  end

  def iff(kw_list), do: kw_list

  think "Turns out our beloved if statements are also using keyword lists" do
    list = iff do
      :this
    else
      :that
    end

    assert list == [do: __?, else: __?]
  end
end
