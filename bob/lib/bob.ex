defmodule Bob do

  def is_question(input) do

    input
    |> String.trim()
    |> String.last() == "?"

  end

  def is_yelling(input) do

    processed_input = input
    |> String.replace(~r/[\d?:(),]/, "")
    |> String.trim()

    cond do
      processed_input == "" -> false
      String.upcase(processed_input) == processed_input -> true
      true -> false
    end

  end

  def is_nonsense(input) do

    String.trim(input) == ""

  end

  def hey(input) do
    cond do
      Bob.is_question(input) and Bob.is_yelling(input) -> "Calm down, I know what I'm doing!"
      Bob.is_yelling(input) -> "Whoa, chill out!"
      Bob.is_question(input) -> "Sure."
      Bob.is_nonsense(input) -> "Fine. Be that way!"
      true -> "Whatever."
    end
  end
end
