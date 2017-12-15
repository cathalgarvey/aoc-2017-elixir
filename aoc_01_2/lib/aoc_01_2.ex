defmodule Aoc012 do
  @doc """
  """
  def sum(list) do
    complement = _rotate_list(list, Integer.floor_div(length(list), 2))
    _sum(list, complement)
  end

  def _sum([], []) do
    0
  end

  def _sum([head | tail], [chead | ctail]) do
    cond do
      head == chead -> head + _sum(tail, ctail)
      true -> _sum(tail, ctail)
    end
  end

  def sum_str(s) do
    s |> _string_to_digits |> sum
  end

  #def _rotate_list([], n) do [] end
  #def _rotate_list(l, 0) do l end

  def _rotate_list(l, n) do
    new_tail = Enum.take(l, n)
    new_head = Enum.to_list(Enum.drop(l, n))
    new_head ++ new_tail
  end

  def _string_to_digits(s) do
    for c <- String.graphemes(s),
        (&(String.match? &1, ~r/\d/)).(c),
        do:
      String.to_integer(c)
  end

end
