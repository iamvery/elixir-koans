defmodule Koans.DSL do
  defmacro think(message, lesson) do
    name = :"#{message}"

    lesson = case Koans.Answers.get(message) do
      {:ok, answers} -> [do: Koans.Answerer.inject(lesson[:do], answers)]
      :error -> lesson
    end

    quote do
      tag = Module.get_attribute(__MODULE__, :tag)
      Module.put_attribute(__MODULE__, :tag, nil)

      unless tag == :skip do
        Module.put_attribute(__MODULE__, :meditation, unquote(message))
        Koans.Examples.add({__MODULE__, unquote(name), tag})
        def unquote(name)(), unquote(lesson)
      end
    end
  end

  defmacro answer(lesson, do: answers) do
    Koans.Answers.add(lesson, answers)
  end

  defmacro __? do
    quote do
      Koans.meditate @meditation
    end
  end

  defmacro assert_?(_) do
    quote do
      Koans.meditate @meditation <> "#{IO.ANSI.format([:red, " (replace with an assertion)"])}"
    end
  end
end
