defmodule Koans.Answerer do
  def inject({:__?, _, _}, [answer|rest]) do
    {answer, rest}
  end

  def inject({:assert_?, _, args}, [answer|rest]) do
    with_assertion = put_elem(answer, 2, args)
    {with_assertion, rest}
  end

  def inject({_, _, args} = quoted, answers) when is_list(args) do
    {args, answers} = inject(args, answers)
    quoted = put_elem(quoted, 2, args)
    {quoted, answers}
  end

  def inject(quoted, answers) when is_tuple(quoted) do
    list = Tuple.to_list(quoted)
    {list, answers} = Enum.map_reduce list, answers, &inject/2
    {List.to_tuple(list), answers}
  end

  def inject([], answers), do: {[], answers}
  def inject([quoted|rest], answers) do
    {quoted, answers} = inject(quoted, answers)
    {rest, answers} = inject(rest, answers)
    {[quoted|rest], answers}
  end
  def inject(quoted, answers), do: {quoted, answers}
end
