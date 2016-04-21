defmodule Koans.Answerer do
  def inject({:__?, _, _}, [answer|rest]) do
    {answer, rest}
  end

  def inject({_, _, args} = quoted, answers) do
    {args, answers} = inject(args, answers)
    quoted = put_elem(quoted, 2, args)
    {quoted, answers}
  end

  def inject([], answers), do: {[], answers}
  def inject([quoted|rest], answers) do
    {quoted, answers} = inject(quoted, answers)
    {rest, answers} = inject(rest, answers)
    {[quoted|rest], answers}
  end
end
