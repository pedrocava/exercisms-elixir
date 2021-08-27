defmodule WordCount do

  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t()) :: map
  def count(sentence) do

    puncts = [",", "!", "&", "@", "$", "%", "^", ":", "?"]

    words = String.downcase(sentence)
    |> String.replace(puncts, "")
    |> String.split()
    |> Enum.join(" ")
    |> String.replace("_", " ")
    |> String.split(" ")

    unique_words = Enum.uniq(words)

    unique_word_count = Enum.map(
      unique_words,
      fn word ->
        words
        |> Enum.filter(fn x -> x == word end)
        |> Enum.count()
      end)

    Enum.zip(unique_words, unique_word_count)
    |> Enum.into(%{})

  end
end
