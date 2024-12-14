defmodule Main do
  def main do
    n =
      IO.read(:line)
      |> String.trim()
      |> String.to_integer()

    solve(n)
    |> IO.puts()
  end

  def solve(n) do
    max =
      Integer.to_string(n, 2)
      |> String.reverse()
      |> String.split("1", parts: 2)
      |> hd()
      |> String.length()
  end
end
