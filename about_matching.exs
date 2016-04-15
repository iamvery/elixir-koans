defmodule AboutMatching do
  use Koans

  think "The match operator binds values on the right to variables on the left" do
    a_variable = 1
    assert a_variable == __?
  end

  think "It matches patterns in data structures" do
    [a, b] = [1, 2]
    [c, d, e] = [4, 5, 6]

    assert a == __?
    assert b == __?
    assert c == __?
    assert d == __?
    assert e == __?
  end

  think "You can ignore values in the match" do
    [a, _] = ["Keep me", "Drop me"]

    assert a  == __?
  end

  think "The sides must match" do
    [a, a] = [1, __?]

    assert a == __?
  end

  think "It raises an error when the match fails" do
    assert_raise MatchError, fn -> [a , a] = [1 , __?] end
  end

  think "Matching a list inside a list" do
    [a] = [["Hello", "World !"]]

    assert a  == __?
  end

  think "Matching a tuple" do
    {:ok, result} = {:ok, 12}
    assert result == __?
  end

  think "Matching the head and tail of a list" do
    [head|tail] = [1, 2, 3]
    assert head == __?
    assert tail == __?
  end
end
