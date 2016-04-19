defmodule Koans.Check do
  def float?(n) when is_float(n), do: true
  def float?(_), do: false

  def integer?(n) when is_integer(n), do: true
  def integer?(_), do: false

  def tuple?(v) when is_tuple(v), do: true
  def tuple?(_), do: false
end
