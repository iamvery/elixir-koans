defmodule Koans.Examples do
  @name __MODULE__

  def start_link do
    Agent.start_link(fn -> [] end, name: @name)
  end

  def add(koan) do
    Agent.update(@name, fn koans -> [koan|koans] end)
  end

  def all do
    Agent.get(@name, fn koans -> koans end)
  end
end
