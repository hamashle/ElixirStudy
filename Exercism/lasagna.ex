defmodule Lasagna do
  def expected_minutes_in_oven do
    40
  end

  def remaining_minutes_in_oven(x) do
    expected_minutes_in_oven() - x
  end

  def preparation_time_in_minutes(x) do
    x + x
  end

  def total_time_in_minutes(x, y) do
    y + preparation_time_in_minutes(x)
  end

  def alarm do
    "Ding!"
  end
end
