defmodule Koans.Formatter do
  @moduledoc """
  This module is a minimal shim used to interface with ExUnit.Formatter for
  formatting lessons.
  """

  @doc """
  Format a pretty failure message from an error in meditation.
  """
  def failure_message(error, meditation, case, counter \\ 1, width \\ 80, formatter \\ &formatter/2) do
    test = build_test(meditation, case)
    failure = build_failure(error)
    ExUnit.Formatter.format_test_failure(test, [failure], counter, width, formatter)
  end

  defp build_test(name, case) do
    %ExUnit.Test{name: name, case: case, tags: %{file: __ENV__.file, line: __ENV__.line}}
  end

  defp build_failure(error) do
    {:error, error, System.stacktrace}
  end

  # These functions are shamelessly ripped from ExUnit.CLIFormatter to make
  # things pretty.
  defp colorize(escape, string) do
    [IO.ANSI.format_fragment(escape, true),
     string,
     IO.ANSI.format_fragment(:reset, true)] |> IO.iodata_to_binary
  end
  defp formatter(:error_info, msg),    do: colorize([:red], msg)
  defp formatter(:extra_info, msg),    do: colorize([:cyan], msg)
  defp formatter(:location_info, msg), do: colorize([:bright, :black], msg)
  defp formatter(_,  msg),             do: msg
end
