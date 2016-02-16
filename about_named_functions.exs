defmodule AboutNamedFunctions do
  use Koans

  def hello(name) do
    "Hello #{name}"
  end

  think "Declaring and using a named function" do
    assert hello("world!") == "Hello world!"
  end

  def hello(name, country) do
    "Hello #{name} from #{country}"
  end

  think "Functions are identified by name and number of parameter" do
    assert hello("world", "France!") == "Hello world from France!"
  end

  def factorial(0) do 1 end
  def factorial(n) do n * factorial(n-1) end

  think "Pattern matching on function named is usefull too" do
    assert factorial(3) == 6
  end

  def i_can_identify_type(value) when is_atom(value) do
    "#{value} is an atom"
  end

  def i_can_identify_type(value) when is_float(value) do
    "#{value} is a float"
  end

  def i_can_identify_type(value) when is_number(value) do
    "#{value} is a number"
  end

  think "Pattern matching on type with guard clause" do
    assert i_can_identify_type(4.2) == "4.2 is a float"
    assert i_can_identify_type(:atom) == "atom is an atom"
    assert i_can_identify_type(5) == "5 is a number"
  end
end
