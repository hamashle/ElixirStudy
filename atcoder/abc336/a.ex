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
    (["L" | List.duplicate("o", n)] ++ ["ng"])
    |> Enum.join()
  end
end
