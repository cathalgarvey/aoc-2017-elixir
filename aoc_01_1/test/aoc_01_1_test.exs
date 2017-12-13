defmodule Aoc011Test do
  use ExUnit.Case
  doctest Aoc011

  test "AOC1" do
    assert Aoc011.sum_doubled_ring([]) == 0
    assert Aoc011.sum_doubled_ring([1]) == 0
    assert Aoc011.sum_doubled_ring([1,1,2,2]) == 3
    assert Aoc011.sum_doubled_ring([1,1,1,1]) == 4
    assert Aoc011.sum_doubled_ring([1,2,3,4]) == 0
    assert Aoc011.sum_doubled_ring([9,1,2,1,2,1,2,9]) == 9
  end

  test "AOC1_strings" do
    assert Aoc011.sum_doubled_ring_str("") == 0
    assert Aoc011.sum_doubled_ring_str("Hi, no digits here") == 0
    assert Aoc011.sum_doubled_ring_str("1") == 0
    assert Aoc011.sum_doubled_ring_str("1122") == 3
    assert Aoc011.sum_doubled_ring_str("1111") == 4
    assert Aoc011.sum_doubled_ring_str("1234") == 0
    assert Aoc011.sum_doubled_ring_str("91212129") == 9
  end
end
