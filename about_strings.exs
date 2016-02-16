defmodule AboutStrings do
  use Koans

  think "creating a new string is easy" do
    a_string = "hello world!"
    assert a_string == "hello world!"
  end

  think "how long is a piece of string?" do
    a_string = "Hello there"
    assert String.length(a_string) == 11
  end

  think "what does the string start with?" do
    a_string = "Hello there"
    assert String.starts_with?(a_string, "H") == true
    assert String.starts_with?(a_string, ["Bonjour", "Hello"]) == true
    assert String.starts_with?(a_string, ["Bonjour", "Greetings"]) == false
  end

  think "what does the string end with?" do
    a_string = "Live long and prosper"
    assert String.ends_with?(a_string, "prosper") == true
    assert String.ends_with?(a_string, ["multiply", "prosper"]) == true
    assert String.ends_with?(a_string, ["keep calm"]) == false
  end

  think "does a string contain something?" do
    a_string = "May the force be with you"
    assert String.contains?(a_string, "force") == true
    assert String.contains?(a_string, ["voyager", "you"]) == true
    assert String.contains?(a_string, ["prosper"]) == false
  end

  think "accessing letters by their positions" do
    a_string = "Hello world!"
    assert String.at(a_string, 2) == "l"
    assert String.at(a_string, 20) == nil
  end

  think "slicing a string" do
    a_string = "Hello world!"
    assert String.slice(a_string, 6, 5) == "world"
    assert String.slice(a_string, -3, 6) == "ld!"
    assert String.slice(a_string, 20, 5) == ""
    assert String.slice(a_string, 4, 0) == ""
    assert String.slice(a_string, 0..5) == "Hello "
  end

  think "capitalization" do
    a_string = "hello world!"
    assert String.capitalize(a_string) == "Hello world!"
  end

  think "upcase" do
    a_string = "hello world!"
    assert String.upcase(a_string) == "HELLO WORLD!"
  end

  think "downcase" do
    a_string = "SPEAK QUIETLY"
    assert String.downcase(a_string) == "speak quietly"
  end

  think "reversing a string" do
    a_string = "sdrow sdrawkcab"
    assert String.reverse(a_string) == "backwards words"
  end

  think "say it again" do
    a_string = "repeat this"
    assert String.duplicate(a_string, 3) == "repeat thisrepeat thisrepeat this"
  end

  think "stripping on the left" do
    a_string = "  abc  "
    assert String.lstrip(a_string) == "abc  "
  end

  think "stripping on the left with specific characters" do
    a_string = "$  abc  $"
    assert String.lstrip(a_string, ?$) == "  abc  $"
  end

  think "stripping on the right" do
    a_string = "  abc  "
    assert String.rstrip(a_string) == "  abc"
  end

  think "stripping on the right with specific character" do
    a_string = "  abc  $"
    assert String.rstrip(a_string, ?$) == "  abc  "
  end

  think "stripping on both sides" do
    a_string = "  abc  "
    assert String.strip(a_string) == "abc"
  end

  think "stripping on both sides with a specific character" do
    a_string = "$  abc  $"
    assert String.strip(a_string, ?$) == "  abc  "
  end

  think "left justification" do
    a_string = "3"
    assert String.ljust(a_string, 3) == "3  "
  end

  think "left justification with a specific character" do
    a_string = "3"
    assert String.ljust(a_string, 3, ?0) == "300"
  end

  think "right justification" do
    a_string = "3"
    assert String.rjust(a_string, 3) == "  3"
  end

  think "right justification with a specific character" do
    a_string = "7"
    assert String.rjust(a_string, 3, ?0) == "007"
  end

  think "converting to an atom" do
    a_string = "atomized"
    assert String.to_atom(a_string) == :atomized
  end

  think "converting to an integer" do
    a_string = "10"
    assert String.to_integer(a_string) == 10
  end

  think "converting to an integer using a different base" do
    a_string = "11"
    assert String.to_integer(a_string, 16) == 17
    assert String.to_integer(a_string, 2) == 3
  end

  think "converting to a float" do
    a_string = "10.99"
    assert String.to_float(a_string) == 10.99
  end
end
