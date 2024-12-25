defmodule PaintByNumber do
  def palette_bit_size(color_count) do
    palette_bit_size(color_count, 0)
  end

  defp palette_bit_size(color_count, counter) do
    if Integer.pow(2, counter) < color_count,
      do: palette_bit_size(color_count, counter + 1),
      else: counter
  end

  def empty_picture() do
    <<>>
  end

  def test_picture() do
    <<0::2, 1::2, 2::2, 3::2>>
  end

  def prepend_pixel(picture, color_count, pixel_color_index) do
    bit_count = palette_bit_size(color_count)
    <<pixel_color_index::size(bit_count), picture::bitstring>>
  end

  def get_first_pixel(picture, color_count) do
    if picture == empty_picture() do
      nil
    else
      bit_count = palette_bit_size(color_count)
      <<first::size(bit_count), _rest::bitstring>> = <<picture::bitstring>>
      first
    end
  end

  def drop_first_pixel(picture, color_count) do
    if picture == empty_picture() do
      empty_picture()
    else
      bit_count = palette_bit_size(color_count)
      <<_first::size(bit_count), rest::bitstring>> = <<picture::bitstring>>
      rest
    end
  end

  def concat_pictures(picture1, picture2) do
    <<picture1::bitstring, picture2::bitstring>>
  end
end
