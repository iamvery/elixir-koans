defmodule AboutStrings do
  use Koans

  think "Creating a new string" do
    a_string = "hello world!"
    assert a_string == __?
  end

  think "How long is a piece of string?" do
    a_string = "Hello there"
    assert String.length(a_string) == __?
  end

  think "What does the string start with?" do
    a_string = "Hello there"
    assert String.starts_with?(a_string, "H") == __?
    assert String.starts_with?(a_string, ["Bonjour", "Hello"]) == __?
    assert String.starts_with?(a_string, ["Bonjour", "Greetings"]) == __?
  end

  think "What does the string end with?" do
    a_string = "Live long and prosper"
    assert String.ends_with?(a_string, "prosper") == __?
    assert String.ends_with?(a_string, ["multiply", "prosper"]) == __?
    assert String.ends_with?(a_string, ["keep calm"]) == __?
  end

  think "Does a string contain something?" do
    a_string = "May the force be with you"
    assert String.contains?(a_string, "force") == __?
    assert String.contains?(a_string, ["voyager", "you"]) == __?
    assert String.contains?(a_string, ["prosper"]) == __?
  end

  think "Accessing letters by their positions" do
    a_string = "Hello world!"
    assert String.at(a_string, 2) == __?
    assert String.at(a_string, 20) == __?
  end

  think "Slicing a string" do
    a_string = "Hello world!"
    assert String.slice(a_string, 6, 5) == __?
    assert String.slice(a_string, -3, 6) == __?
    assert String.slice(a_string, 20, 5) == __?
    assert String.slice(a_string, 4, 0) == __?
    assert String.slice(a_string, 0..5) == __?
  end

  think "Capitalization" do
    a_string = "hello world!"
    assert String.capitalize(a_string) == __?
  end

  think "Upcase" do
    a_string = "hello world!"
    assert String.upcase(a_string) == __?
  end

  think "Downcase" do
    a_string = "SPEAK QUIETLY"
    assert String.downcase(a_string) == __?
  end

  think "Reversing a string" do
    a_string = "sdrow sdrawkcab"
    assert String.reverse(a_string) == __?
  end

  think "Say it again" do
    a_string = "repeat this"
    assert String.duplicate(a_string, 3) == __?
  end

  think "Stripping on the left" do
    a_string = "  abc  "
    assert String.lstrip(a_string) == __?
  end

  think "Stripping on the left with specific characters" do
    a_string = "$  abc  $"
    assert String.lstrip(a_string, ?$) == __?
  end

  think "Stripping on the right" do
    a_string = "  abc  "
    assert String.rstrip(a_string) == __?
  end

  think "Stripping on the right with specific character" do
    a_string = "  abc  $"
    assert String.rstrip(a_string, ?$) == __?
  end

  think "Stripping on both sides" do
    a_string = "  abc  "
    assert String.strip(a_string) == __?
  end

  think "Stripping on both sides with a specific character" do
    a_string = "$  abc  $"
    assert String.strip(a_string, ?$) == __?
  end

  think "Left justification" do
    a_string = "3"
    assert String.ljust(a_string, 3) == __?
  end

  think "Left justification with a specific character" do
    a_string = "3"
    assert String.ljust(a_string, 3, ?0) == __?
  end

  think "Right justification" do
    a_string = "3"
    assert String.rjust(a_string, 3) == __?
  end

  think "Right justification with a specific character" do
    a_string = "2"
    assert String.rjust(a_string, 3, ?0) == __?
  end

  think "Converting to an atom" do
    a_string = "atomized"
    assert String.to_atom(a_string) == __?
  end

  think "Converting to an integer" do
    a_string = "10"
    assert String.to_integer(a_string) == __?
  end

  think "Converting to an integer using a different base" do
    a_string = "11"
    assert String.to_integer(a_string, 16) == __?
    assert String.to_integer(a_string, 2) == __?
  end

  think "Converting to a float" do
    a_string = "10.99"
    assert String.to_float(a_string) == __?
  end
end
