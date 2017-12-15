defmodule Aoc012Test do
  use ExUnit.Case
  doctest Aoc012

    test "RotateList" do
      assert Aoc012._rotate_list([],1) == []
      assert Aoc012._rotate_list([1,2,3,4,5,6,7], 3) == [4,5,6,7,1,2,3]
    end

    test "AOC1" do
      assert Aoc012.sum([]) == 0
      assert Aoc012.sum([1,2,1,2]) == 6
      assert Aoc012.sum([1,2,2,1]) == 0
      assert Aoc012.sum([1,2,3,4,2,5]) == 4
      assert Aoc012.sum([1,2,3,1,2,3]) == 12
      assert Aoc012.sum([1,2,1,3,1,4,1,5]) == 4
    end

    test "AOC1_strings" do
      assert Aoc012.sum_str("") == 0
      assert Aoc012.sum_str("Hi, no digits here") == 0
      assert Aoc012.sum_str("1212") == 6
      assert Aoc012.sum_str("1221") == 0
      assert Aoc012.sum_str("123425") == 4
      assert Aoc012.sum_str("123123") == 12
      assert Aoc012.sum_str("12131415") == 4
    end
end
