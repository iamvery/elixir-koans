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
end
