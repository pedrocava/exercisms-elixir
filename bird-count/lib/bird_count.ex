defmodule BirdCount do
  def today(list) do
    case list do
      [first | rest] -> first
      [first] -> first
      [] -> nil
    end
  end

  def increment_day_count(list) do
    case list do
      [first | rest] -> [first + 1 | rest]
      [] -> [1]
    end
  end

  def has_day_without_birds?(list) do
    cond do
      Enum.any?(list, fn x -> x == 0 end) -> true 
      true -> false
    end
  end

  def total(list) do
    case list do
      [] -> 0
      [first] -> first
      [first | rest] -> Enum.reduce(list, fn x, y -> x + y end)
    end
  end

  def busy_days(list) do
    case list do
      [] -> 0
      [first] -> if first >= 5, do: 1, else: 0
      [first | rest] -> 
        list 
        |> Enum.filter(fn x -> x >= 5 end)
        |> Enum.count()
    end
  end
end
