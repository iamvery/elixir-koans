defmodule Koans do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      worker(Koans.Examples, []),
      worker(Koans.Answers, []),
    ]

    opts = [strategy: :one_for_one, name: Koans.Supervisor]
    Supervisor.start_link(children, opts)
  end

  defmacro __using__([]) do
    quote do
      import ExUnit.Assertions
      import Koans.DSL, only: [think: 2, answer: 2, __?: 0, assert_?: 1]
    end
  end

  def meditate(subject) do
    raise Koans.MeditateWarning, message: subject
  end
end
