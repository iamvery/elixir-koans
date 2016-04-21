defmodule Koans.Answerer do
  def inject({:__?, _, _}, [answer|rest]) do
    {answer, rest}
  end
end
