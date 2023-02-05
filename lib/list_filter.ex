defmodule ListFilter do
  def call(list), do: list_filter(list, 0)

  defp list_filter [], acc do
    acc
  end

  defp list_filter [head | tail], acc do
    case head do
      head when is_number(head) == true and rem(head, 2) != 0 -> list_filter(tail, acc + 1)
      _ ->  list_filter(tail, acc)
    end
  end
end
