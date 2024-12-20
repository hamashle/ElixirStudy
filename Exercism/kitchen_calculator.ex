defmodule KitchenCalculator do
  def get_volume(volume_pair) do
    elem(volume_pair, 1)
  end

  def to_milliliter(volume_pair) do
    cond do
      elem(volume_pair, 0) == :milliliter -> {:milliliter, elem(volume_pair, 1) * 1}
      elem(volume_pair, 0) == :cup -> {:milliliter, elem(volume_pair, 1) * 240}
      elem(volume_pair, 0) == :fluid_ounce -> {:milliliter, elem(volume_pair, 1) * 30}
      elem(volume_pair, 0) == :teaspoon -> {:milliliter, elem(volume_pair, 1) * 5}
      elem(volume_pair, 0) == :tablespoon -> {:milliliter, elem(volume_pair, 1) * 15}
    end
  end

  def from_milliliter(volume_pair, unit) do
    cond do
      unit == :milliliter -> {:milliliter, elem(volume_pair, 1) * 1}
      unit == :cup -> {:cup, elem(volume_pair, 1) / 240}
      unit == :fluid_ounce -> {:fluid_ounce, elem(volume_pair, 1) / 30}
      unit == :teaspoon -> {:teaspoon, elem(volume_pair, 1) / 5}
      unit == :tablespoon -> {:tablespoon, elem(volume_pair, 1) / 15}
    end
  end

  def convert(volume_pair, unit) do
    volume_pair
    |> to_milliliter()
    |> from_milliliter(unit)
  end
end
