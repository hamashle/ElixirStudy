defmodule BirdCount do
  def today(list) do
    cond do
      list |> length > 0 -> hd(list)
      true -> nil
    end
  end

  def increment_day_count(list) do
    case list do
      [head | tail] -> [head + 1 | tail]
      [] -> [1]
    end
  end

  def has_day_without_birds?([]), do: false
  def has_day_without_birds?([0 | _tail]), do: true

  def has_day_without_birds?([_head | tail]) do
    has_day_without_birds?(tail)
  end

  def total(list, count \\ 0)
  def total([], count), do: count

  def total([head | tail], count) do
    total(tail, count + head)
  end

  def busy_days(list, count \\ 0)
  def busy_days([], count), do: count

  def busy_days([head | tail], count) do
    if head >= 5 do
      busy_days(tail, count + 1)
    else
      busy_days(tail, count)
    end
  end
end
