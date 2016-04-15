defmodule AboutAnonymousFunctions do
  use Koans

  think "Declaring an anonymous function referenced by a_variable" do
    a_variable = fn -> "Here the body anonymous function!" end

    assert a_variable.() == __?
  end

  think "Anonymous function with parameter" do
    a_variable = fn(name) -> "Hello #{name}!" end

    assert a_variable.("John") == __?
  end

  think "Anonymous function short-hand" do
    a_variable = &("Hello #{&1}!")

    assert a_variable.("John") == __?
  end

  think "Anonymous function with multiple implementation body! Amazing matching power!" do
    a_variable = fn
                   "first body" -> "Running body 1"
                   "second body" -> "Running body 2"
                 end

    assert a_variable.("first body")  == __?
    assert a_variable.("second body") == __?
  end

  think "Function as the argument of a function!" do
    add_five = fn(value) -> 5 + value end
    add_ten_to_result = fn(function, value) -> function.(value) + 10 end

    assert add_ten_to_result.(add_five, 5) == __?
  end
end
