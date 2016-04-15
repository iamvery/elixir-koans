defmodule AboutNamedFunctions do
  use Koans

  def hello(name) do
    "Hello #{name}"
  end

  think "Calling  a named function" do
    assert hello("world!") == __?
  end

  def hello(name, country) do
    "Hello #{name} from #{country}"
  end

  think "A function with the same name, but different argument is a different function" do
    assert hello("world", "France!") == __?
  end

  def factorial(0) do 1 end
  def factorial(n) do n * factorial(n-1) end

  think "Pattern matching on a named function" do
    assert factorial(3) == __?
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

  think "Functions can have guard clauses" do
    assert i_can_identify_type(4.2) == __?
    assert i_can_identify_type(:atom) == __?
    assert i_can_identify_type(5) == __?
  end
end
