defmodule KitchenCalculator do
  def get_volume(volume_pair = {_, numeric_component}) do
    numeric_component
  end

  def to_milliliter(volume_pair = {unit, numeric_component}) do
    case unit do
      :cup -> {:milliliter, numeric_component * 240}
      :fluid_ounce -> {:milliliter, numeric_component * 30}
      :teaspoon -> {:milliliter, numeric_component * 5}
      :tablespoon -> {:milliliter, numeric_component * 15}
      :milliliter -> {:milliliter, numeric_component}  
    end
  end

  def from_milliliter(volume_pair = {original_unit, numeric_component}, unit) do
    case unit do
      :cup -> {unit, numeric_component / 240}
      :fluid_ounce -> {unit, numeric_component / 30}
      :teaspoon -> {unit, numeric_component / 5}
      :tablespoon -> {unit, numeric_component / 15}
      :milliliter -> {unit, numeric_component}  
    end
  end

  def convert(volume_pair = {original_unit, numeric_component}, unit) do
    KitchenCalculator.to_milliliter(volume_pair) 
      |> KitchenCalculator.from_milliliter(unit)
  end
end
