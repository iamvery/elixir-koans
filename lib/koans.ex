defmodule Koans do

  defmacro __using__([]) do
    quote do
      import ExUnit.Assertions
      import Koans.DSL, only: [think: 2, __?: 0, assert_?: 1]
    end
  end

  def meditate(subject) do
    raise Koans.MeditateWarning, message: subject
  end
end
