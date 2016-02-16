defmodule AboutNumbersAndBooleans do
  use Koans

  think "Basics numbers types" do
    an_integer = 1

    assert Koans.Check.integer?(an_integer)

    assert Koans.Check.float?(42.0)

    refute Koans.Check.float?(an_integer)

    refute Koans.Check.integer?(42.0)
  end

  think "Is an hexadecimal number treated as an integer" do
    assert is_integer(0x2A)
  end

  think "Answer to the Ultimate Question of Life, the Universe, and Everything" do
    an_hex = 0x20
    a_dec = 10
    assert an_hex + a_dec == 42
  end

  think "You can use _ as separator in integer" do
    assert is_integer(100_000_000)
  end

  think "Value equality operator has an usual expectation" do
    assert 4 == 4.0
  end

  think "Value inequality operator has an usual expectation" do
    assert 4 != 2.0
  end

  think "Strict equality operator take care about types" do
    refute 4 === 4.0
  end

  think "Strict inequality operator take care about types" do
    assert 4 !== 4.0
  end

  think "Comparing two values considering type" do
    assert 4.0 === 4.0
  end

  think "Are booleans integers ?" do
    refute is_integer(true)
    refute is_boolean(0)
  end

  think "Booleans are atoms" do
    assert is_atom(true)
    assert :true == true
  end

  think "That's true if a_boolean is true ortherwise b_boolean" do
    assert false or true
  end

  think "Operator || is a relaxed boolean operator, that's true if a_variable or b_variable isn't nil" do
    assert 42 || nil
  end

  think "Operator && is a relaxed boolean operator, that's true if a_variable and b_variable isn't nil" do
    assert 42 && 5.0
  end
end
