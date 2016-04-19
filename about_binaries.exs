defmodule AboutBinaries do
  use Koans

  think "A binary is a sequence of bytes" do
    binary = <<1, 42, 255>>
    assert is_binary(binary) == __?
  end

  think "A binary's size is the number of bytes" do
    binary = <<1, 42, 255>>
    assert byte_size(binary) == __?
  end

  think "Binaries can be contatenated" do
    concatenated = <<1, 2>> <> <<3, 4>>
    assert concatenated == __?
  end

  think "Every character has a unique number (unicode codepoint)" do
    assert_? ?a === 97
    assert_? ?b === 98
    assert   ?c === __?
  end

  think "Strings are binaries" do
    assert is_binary("abc") == __?
    assert <<97, 98, 99>> === __?
  end

  think "Thus strings can be concatenated" do
    contatenated = "Hello " <> "world"
    assert contatenated == __?
  end

  @tag :focus
  think "Numbers can be represented as bits" do
    bit_representation = fn (integer) -> Integer.to_string(integer, 2) end
    assert bit_representation.(1) == "1"
    assert bit_representation.(2) == "10"
    assert bit_representation.(3) == "11"
    assert bit_representation.(4) == "100"
  end

  @tag :focus
  think "255 is the max value we can represent with 8 bits (1 byte)" do
    bit_representation = fn (integer) -> Integer.to_string(integer, 2) end
    assert bit_representation.(255) == "11111111"
    assert String.length(bit_representation.(255)) == 8
    assert bit_representation.(256) == "100000000"
    assert String.length(bit_representation.(256)) == 9
  end

  @tag :focus
  think "Unicode defines far more than 255 codepoints" do
    assert ?λ == 955
    assert ?™ == 8482
  end

  # These would be be simple, but misleading; actually characters whose
  # codepoint is > 128 require more than 1 byte, because UTF8 always uses at
  # least 1 bit of metadata per byte (a leading 0 in the case of "a", to say
  # "this byte is not part of a sequence; it encodes the whole codepoint")
  #
  # @tag :focus
  # think "Characters whose codepoint is <= 255 use 1 byte" do
  #   assert ?a == 97
  #   assert String.length("a") == 1
  #   assert byte_size("a") == 1
  #   assert "a" === <<97>>
  # end
  #
  # @tag :focus
  # think "Characters whose codepoint is > 255 require more than 1 byte" do
  #   assert ?λ == 955
  #   assert String.length("λ") == 1
  #   assert byte_size("λ") == 2
  #   assert "λ" === <<206, 187>>
  # end

  @tag :focus
  think "Therefore, most Unicode codepoints require more than 1 byte to represent" do
    assert ?λ == 955
    assert String.length("λ") == 1
    assert byte_size("λ") == 2
    assert "λ" === <<206, 187>>
  end

  @tag :focus
  think "The bytes representing a codepoint are UTF8 encoded" do
    bit_representation = fn (integer) -> Integer.to_string(integer, 2) end
    assert "λ" === <<206, 187>>
    utf8_encoding = [206, 187] |> Enum.map(bit_representation)
    assert utf8_encoding == ["11001110", "10111011"]
    # See https://en.wikipedia.org/wiki/UTF-8#Description for details
  end
end
