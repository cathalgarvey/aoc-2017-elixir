defmodule Aoc011 do
  @moduledoc """
  Advent of Code 2017, Challenge 01-1.

  Given a list of numbers, return the sum of all numbers that
  are followed by a duplicate of themselves, wrapping around.
  """

  @doc """
  Entry point for strings containing digits; ignores non-digit
  graphemes.
  """
  def sum_doubled_ring_str(s) do
    _string_to_digits(s) |> sum_doubled_ring
  end

  @doc """
  Entry point. Appends the initial number to the end of the
  numbers list (circularising it) and passes to a recursive
  function.
  """
  def sum_doubled_ring(other) do
    case other do
      [] -> 0
      [_ | []] -> 0
      [head | tail] -> _summer(0, [head | tail ++ [head]])
    end
  end

  def _summer(prev, list) do
    case list do
      [] -> 0
      [last | []] ->
        if prev == last do prev else 0 end
      [head | tail] ->
        if prev == head do
          prev + _summer(head, tail)
        else
          _summer(head, tail)
        end
    end
  end


  def _string_to_digits(s) do
    for c <- String.graphemes(s),
        (&(String.match? &1, ~r/\d/)).(c),
        do:
      String.to_integer(c)
  end

end
