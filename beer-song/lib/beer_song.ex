defmodule BeerSong do
  @doc """
  Get a single verse of the beer song
  """
  @spec verse(integer) :: String.t()
  def verse(0), do: """
  No more bottles of beer on the wall, no more bottles of beer.
  Go to the store and buy some more, 99 bottles of beer on the wall.
  """

  def verse(1), do: """
  1 bottle of beer on the wall, 1 bottle of beer.
  Take it down and pass it around, no more bottles of beer on the wall.
  """

  def verse(2), do: """
  2 bottles of beer on the wall, 2 bottles of beer.
  Take one down and pass it around, 1 bottle of beer on the wall.
  """

  def verse(n) when n in 3..99, do: """
  #{n} bottles of beer on the wall, #{n} bottles of beer.
  Take one down and pass it around, #{n-1} bottles of beer on the wall.
  """


  @doc """
  Get the entire beer song for a given range of numbers of bottles.
  """
  @spec lyrics(Range.t()) :: String.t()

  def lyrics() do
    [BeerSong.lyrics(99..3), BeerSong.lyrics(2..0)]
    |> Enum.join("\n")
  end

  def lyrics(first..last) when first <= 99 and last >= 3 do
    Enum.map(first..last, fn x -> BeerSong.verse(x) end)
    |> Enum.join("\n")
  end

  def lyrics(first..last) when first == 2 and last == 0, do: """
  2 bottles of beer on the wall, 2 bottles of beer.
  Take one down and pass it around, 1 bottle of beer on the wall.

  1 bottle of beer on the wall, 1 bottle of beer.
  Take it down and pass it around, no more bottles of beer on the wall.

  No more bottles of beer on the wall, no more bottles of beer.
  Go to the store and buy some more, 99 bottles of beer on the wall.
  """


end
