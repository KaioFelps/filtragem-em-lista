defmodule ListFilterTest do
  use ExUnit.Case

  test "returns the length of odd numbers from the list" do
    res = ListFilter.call([1, 1, 3, 5, 2, 2, 4, 8, "banana", %{a: 1, b: 2}])
    expected_res = 4

    assert res == expected_res
  end
end
