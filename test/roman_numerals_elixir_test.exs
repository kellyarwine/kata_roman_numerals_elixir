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

  test "returns IV when 4 is input" do
    assert(RomanNumeralsElixir.convert_number(4) == "IV")
  end

  test "returns M when 1000 is input" do
    assert(RomanNumeralsElixir.convert_number(1000) == "M")
  end

  test "returns II when 2 is input" do
    assert(RomanNumeralsElixir.convert_number(2) == "II")
  end

  test "returns III when 3 is input" do
    assert(RomanNumeralsElixir.convert_number(3) == "III")
  end

  test "returns VI when 6 is input" do
    assert(RomanNumeralsElixir.convert_number(6) == "VI")
  end

  test "returns IX when 9 is input" do
    assert(RomanNumeralsElixir.convert_number(9) == "IX")
  end

  test "returns XI when 11 is input" do
    assert(RomanNumeralsElixir.convert_number(11) == "XI")
  end

  test "returns XIV when 14 is input" do
    assert(RomanNumeralsElixir.convert_number(14) == "XIV")
  end

  test "returns XV when 15 is input" do
    assert(RomanNumeralsElixir.convert_number(15) == "XV")
  end

  test "returns XIX when 19 is input" do
    assert(RomanNumeralsElixir.convert_number(19) == "XIX")
  end

  test "returns XL when 40 is input" do
    assert(RomanNumeralsElixir.convert_number(40) == "XL")
  end

  test "returns XC when 90 is input" do
    assert(RomanNumeralsElixir.convert_number(90) == "XC")
  end

  test "returns XCIX when 99 is input" do
    assert(RomanNumeralsElixir.convert_number(99) == "XCIX")
  end

  test "returns DI when 501 is input" do
    assert(RomanNumeralsElixir.convert_number(501) == "DI")
  end

  test "returns DL when 550 is input" do
    assert(RomanNumeralsElixir.convert_number(550) == "DL")
  end

  test "returns DCCCXC when 890 is input" do
    assert(RomanNumeralsElixir.convert_number(890) == "DCCCXC")
  end

  test "returns MDCCC when 1800 is input" do
    assert(RomanNumeralsElixir.convert_number(1800) == "MDCCC")
  end

  test "returns CM when 900 is input" do
    assert(RomanNumeralsElixir.convert_number(900) == "CM")
  end

  test "returns CMXC when 990 is input" do
    assert(RomanNumeralsElixir.convert_number(990) == "CMXC")
  end

  test "returns MMMMM when 5000 is input" do
    assert(RomanNumeralsElixir.convert_number(5000) == "MMMMM")
  end

end
