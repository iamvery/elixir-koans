defmodule AboutNumbersAndBooleans do
  use Koans

  think "Basics numbers types" do
    an_integer = __?

    assert Koans.Check.integer?(an_integer)

    assert_? Koans.Check.float?(42.0)

    assert_? Koans.Check.float?(an_integer)

    assert_? Koans.Check.integer?(42.0)
  end

  think "Is an hexadecimal number treated as an integer" do
    assert_? is_integer(0x2A)
  end

  think "Answer to the Ultimate Question of Life, the Universe, and Everything" do
    an_hex = 0x20
    a_dec = 10
    assert an_hex + a_dec == __?
  end

  think "You can use _ as separator in integer" do
    assert_? is_integer(100_000_000)
  end

  think "Value equality operator has an usual expectation" do
    assert_? 4 == 4.0
  end

  think "Value inequality operator has an usual expectation" do
    assert_? 4 != 2.0
  end

  think "Strict equality operator take care about types" do
    assert_? 4 === 4.0
  end

  think "Strict inequality operator take care about types" do
    assert_? 4 !== 4.0
  end

  think "Comparing two values considering type" do
    assert_? 4.0 === 4.0
  end

  think "Are booleans integers ?" do
    assert_? is_integer(true)
    assert_? is_boolean(0)
  end

  think "Booleans are atoms" do
    assert_? is_atom(true)
    assert :true == __?
  end

  think "That's true if a_boolean is true ortherwise b_boolean" do
    assert_? false or true
  end

  think "Operator || is a relaxed boolean operator, that's true if a_variable or b_variable isn't nil" do
    assert_? 42 || nil
  end

  think "Operator && is a relaxed boolean operator, that's true if a_variable and b_variable isn't nil" do
    assert_? 42 && 5.0
  end
end
