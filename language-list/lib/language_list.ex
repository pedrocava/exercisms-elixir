defmodule LanguageList do
  def new() do
    []
  end

  def add(list, language) do
    [language | list]
  end

  def remove(list) do
    List.delete_at(list, 0)
  end

  def first(list) do
    List.first(list)
  end

  def count(list) do
    [0 | Enum.map(list, fn x -> 1 end)]
    |> Enum.reduce(fn x, y -> x + y end)
  end

  def exciting_list?(list) do
    Enum.any?(list, fn x -> x == "Elixir" end)
  end
end
