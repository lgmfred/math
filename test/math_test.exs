defmodule MathTest do
  use ExUnit.Case
  doctest Math

  # describe "Integer Math" do
  #   test "add/2 w/ integers" do
  #     assert Math.add(1, 1) == 2
  #     assert Math.add(0, 1) == 1
  #     assert Math.add(-1, 1) == 0
  #   end
  # end

  describe "add/2" do
    test "add/2 w/ integers" do
      assert Math.add(1, 1) == 2
      assert Math.add(0, 1) == 1
      assert Math.add(-1, 1) == 0
    end

    test "add/2 with strings" do
      assert Math.add("foo", "bar") == "foobar"
    end

    test "add/2 w/ lists of single values" do
      assert Math.add([1], [2]) == [1, 2]
      # assert Math.add([1, 2], [3, 4]) == [1, 2, 3, 4]
    end

    test "add/2 w/ lists of multiple values" do
      assert Math.add([1, 2], [3, 4]) == [1, 2, 3, 4]
    end
  end

  describe "subtract/2" do
    test "subtract/2 integers" do
      assert Math.subtract(1, 1) == 0
    end

    test "subtract/2 list w/ single values" do
      assert Math.subtract([1], [2]) == [1]
    end
  end
end
