defmodule Koans.Runner do
  def run do
    Koans.Examples.all
    # TODO lazy iteration
    |> focus
    |> Enum.reverse
    |> Enum.each(&exec/1)
    congratulate
  end

  defp focus(koans) do
    focused_koans = Enum.filter(koans, fn {_,_,tag} -> tag == :focus end)

    if Enum.empty?(focused_koans) do
      koans
    else
      focused_koans
    end
  end

  defp exec({module, koan, _tag}) do
    try do
      apply(module, koan, [])
    rescue
      problem in [ExUnit.AssertionError, Koans.MeditateWarning] ->
        stop_to_learn(problem, koan, module)
    end
    success(module, koan)
  end

  defp stop_to_learn(error, meditation, case) do
    failure(case, meditation)
    Koans.Formatter.failure_message(error, meditation, case)
    |> IO.puts
    exit({:shutdown, 1})
  end

  defp failure(module, koan) do
    IO.ANSI.format([:red, "✗ #{module}: #{koan}\n"])
    |> IO.puts
  end

  defp success(module, koan) do
    IO.ANSI.format([:green, "✓ #{module}: #{koan}"])
    |> IO.puts
  end

  @mountains ~S(
  ** You have learned much. You must find your own path now. **

                                  _                *       
                *                ((                        
                                  `                        
             ^                                             
            /*\        ^    *                              
           /***\      /*\                                  
          /     \    /* *\             *                   
         /       \  /     \    ^                           
        /         \/       \  / \               ^          
       /          /         \/   \             / \  _      
      /          /          /     \       _   /   \/ \  X  
     /          /          /       \  _  / \ /    /   \/ \ 
---------------------------------------------------------------
)

  defp congratulate do
    IO.puts @mountains
  end
end
