defmodule AboutSigils do
  use Koans

  think "The ~s sigil is a different way of expressing string literals" do
    assert ~s{This is a string} == __?
  end

  think "Sigils are useful to avoid escaping quotes in strings" do
    assert "\"Welcome to the jungle\", they said." == __?
  end

  @tag :skip
  think "Sigils can use different delimiters" do
    assert_? ~s{This works!} == ~s[This works!]
  end

  think "The lowercase ~s sigil supports string interpolation" do
    assert ~s[1 + 1 = #{1+1}] == __?
  end

  think "The ~S sigil is similar to ~s but doesn't do interpolation" do
    assert ~S[1 + 1 = #{1+1}] == __?
  end

  think "~w is another sigil, it creates word lists" do
    assert ~w(Hello world) == [__?, __?]
  end

  think "~w also allows interpolation" do
    assert ~w(Hello 1#{1+1}3) == [__?, __?]
  end

  think "~W behaves to ~w as ~S behaves to ~s" do
    assert ~W(Hello #{1+1}) == ["Hello", __?]
  end
end

