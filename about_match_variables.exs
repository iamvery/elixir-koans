defmodule AboutMatchesVariables do
  use Koans

  think "It's like affecting a variable" do
    a_variable = 1
    assert a_variable == 1
  end

  think "The real operation is named matching" do
    [a, b] = [1, 2]

    assert a  == 1 and b == 2
  end

  think "Matching three variables" do
    [a, b, c] = [1, 2, 3]

    assert a  == 1 and b == 2 and c == 3
  end

  think "Matching one variable and drop a value" do
    [a, _] = ["Keep me", "Drop me"]

    assert a  == "Keep me"
  end

  think "Error matching" do
    assert_raise MatchError, fn -> [ a , a ] = [ 1 , 2 ] end
  end

  think "Matching an array inner an array" do
    [ a ] = [ ["Hello", "World !"] ]

    assert a  == ["Hello", "World !"]
  end

  think "matching a tuple" do
    { :ok, result } = { :ok, 12 }
    assert result == 12
  end

  think "heads and tails" do
    [ head | tail ] = [1, 2, 3]
    assert head == 1
    assert tail == [2,3]
  end
end
