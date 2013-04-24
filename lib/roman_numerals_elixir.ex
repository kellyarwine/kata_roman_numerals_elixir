defmodule RomanNumeralsElixir do

  def convert_number(number) do
    lookup_number(number, [[10,"X"], [5,"V"], [1,"I"]], [])
  end

  def lookup_number(number, [current_lookup | remaining_lookups], acc) do
    lower_method(number, current_lookup, remaining_lookups, acc)
  end

  def lower_method(number, [current_number| current_numeral], remaining_lookups, acc) do
    if number == current_number do
      list_to_bitstring([current_numeral] ++ acc)
    else
      lookup_number(number, remaining_lookups, acc)
    end
  end

  # def lookup_number(number, [], acc) do
  #   acc
  # end

end
