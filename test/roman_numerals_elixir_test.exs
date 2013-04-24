Code.require_file "../test_helper.exs", __FILE__

defmodule RomanNumeralsElixirTest do
  use ExUnit.Case

  test "returns I when 1 is input" do
    assert(RomanNumeralsElixir.convert_number(1) == "I")
  end

  test "returns V when 5 is input" do
    assert(RomanNumeralsElixir.convert_number(5) == "V")
  end

  test "returns X when 10 is input" do
    assert(RomanNumeralsElixir.convert_number(10) == "X")
  end
end
