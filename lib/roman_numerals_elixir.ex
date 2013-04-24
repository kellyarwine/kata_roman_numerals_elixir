defmodule RomanNumeralsElixir do
  # VARIABLE = 1

  def roman_numeral_lookup do
  [
    [1000,  "M"],
    [900 , "CM"],
    [500 ,  "D"],
    [100 ,  "C"],
    [90  , "XC"],
    [50  ,  "L"],
    [40  , "XL"],
    [10  ,  "X"],
    [9   , "IX"],
    [5   ,  "V"],
    [4   , "IV"],
    [1   ,  "I"],
    [40  , "IV"],
    [10  ,  "X"],
    [5   ,  "V"],
    [1   ,  "I"],
  ]
  end

  def convert_number(number) do
    parse_lookup(number, roman_numeral_lookup, [])
  end

  def parse_lookup(number, [current_lookup | remaining_lookups], acc) do
    if number > 0 do
      roman_numeral(number, current_lookup, remaining_lookups, acc)
    else
      list_to_bitstring(acc)
    end
  end

  def roman_numeral(number, [current_number | current_numeral], remaining_lookups, acc) do
    if number >= current_number do #) == 0 && number > 0 do
    # IO.puts "number: #{number} | current_number: #{current_number} | remaining: #{rem(number, current_number)} | acc: #{acc}"
      roman_numeral(number - current_number, [current_number | current_numeral], remaining_lookups, acc ++ [current_numeral])
    else
      parse_lookup(number, remaining_lookups, acc)
    end
  end

  def parse_lookup(number, [], acc) do
    list_to_bitstring(acc)
  end

end
