defmodule Koans.Answers do
  @name __MODULE__

  def start_link do
    Agent.start_link(fn -> %{} end, name: @name)
  end

  def add(lesson, answers) do
    Agent.update(@name, fn map -> Map.put(map, lesson, answers) end)
  end

  def get(lesson) do
    Agent.get(@name, fn map -> Map.fetch(map, lesson) end)
  end
end
