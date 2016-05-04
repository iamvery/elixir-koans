defmodule Koans.Answerer do
  def inject({:__?, _, _}, [answer|rest]) do
    {answer, rest}
  end

  def inject({:assert_?, _, args}, [answer|rest]) do
    with_assertion = put_elem(answer, 2, args)
    {with_assertion, rest}
  end

  def inject(quoted, answers), do: {quoted, answers}
end
