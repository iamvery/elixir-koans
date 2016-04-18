defmodule AboutSigils do
  use Koans

  think "The ~s sigil is a different way of expressing string literals" do
    assert_? "This is a string" == ~s{This is a string}
  end

  think "Sigils are useful to avoid escaping quotes in strings" do
    assert "\"Hello, I am a string\" - \"Hey, me too\"" == __?
  end

  think "Sigils can use different delimiters" do
    assert_? ~s{This works!} == ~s[This works!]
  end

  think "The ~S sigil is similar to ~s but doesn't do interpolation" do
    assert_?  ~S[1 + 1 = #{1+1}] == ~s[1 + 1 = #{1+1}]
    assert_?  ~S[1 + 1 = #{1+1}] == "1 + 1 = \#\{1+1\}"
  end

  think "~w is another sigil, it creates word lists" do
    assert ~w(Hello world) == [__?, __?]
  end

  think "~w allows for interpolation" do
    assert ~w(Hello 1#{1+1}3) == __?
  end

  think "~W behaves to ~w as ~S behaves to ~s" do
    assert_? ~W(Hello #{100+20+3}) == ~w(Hello #{100+20+3})
    assert __? == ~w(Hello \#\{100+20+3\})
  end
end

