defmodule HighSchoolSweetheart do
  def first_letter(name) do
    name
    |> String.trim()
    |> String.at(0)
  end

  def initial(name) do
    name 
    |> HighSchoolSweetheart.first_letter()
    |> String.upcase()
    |> Kernel.<>(".")
  end

  def initials(full_name) do
    String.split(full_name, " ")
    |> Enum.map(fn x -> HighSchoolSweetheart.initial(x) end)
    |> Enum.join(" ")
  end

  def pair(full_name1, full_name2) do
    name1 = HighSchoolSweetheart.initials(full_name1)
    name2 = HighSchoolSweetheart.initials(full_name2)     
"     ******       ******
   **      **   **      **
 **         ** **         **
**            *            **
**                         **
**     #{name1}  +  #{name2}     **
 **                       **
   **                   **
     **               **
       **           **
         **       **
           **   **
             ***
              *
"
  end
end
