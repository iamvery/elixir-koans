defmodule AboutNumbersAndBooleans do
  use Koans

  @tag :skip
  think "Basics numbers types" do
    assert_? is_integer(42)
    assert_? is_integer(42.0)
    assert_? is_float(42.0)
    assert_? is_float(42)
  end

  @tag :skip
  think "Is a hexadecimal number an integer?" do
    assert_? is_integer(0x2A)
  end

  think "Answer to the Ultimate Question of Life, the Universe, and Everything" do
    a_hex = 0x20
    a_dec = 10
    assert a_hex + a_dec == __?
  end

  think "You can use _ as separator in integer" do
    assert 100_000_000 == __?
  end

  @tag :skip
  think "Integers and floats have value equality" do
    assert_? 4 == 4.0
  end

  @tag :skip
  think "Integers and floats have value inequality" do
    assert_? 4 != 2.0
  end

  @tag :skip
  think "Strict equality checks types" do
    assert_? 4 === 4.0
    assert_? 4.0 === 4.0
  end

  @tag :skip
  think "Strict inequality checks types" do
    assert_? 4 !== 4.0
  end

  @tag :skip
  think "Are integers booleans?" do
    assert_? is_integer(true)
    assert_? is_boolean(0)
  end

  @tag :skip
  think "Boolean OR returns left side if true, otherwise right side" do
    assert_? true or true
    assert_? true or false
    assert_? false or true
    assert_? false or false
  end

  think "Boolean operators check their argument's type" do
    message = "argument error: " <> __?
    assert_raise ArgumentError, message, fn -> 1 or true end
  end

  @tag :skip
  think "Other binary operators are relaxed about their argument's type" do
    assert __? == 42  || 84
    assert __? == 42  || nil
    assert __? == nil || 84
    assert __? == nil || nil
  end
end
