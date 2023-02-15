defmodule MathTest do
  use ExUnit.Case
  doctest Math

  describe "add/2" do
    test "with integers" do
      assert Math.add!(2, 2) == 4
      assert Math.add!(7, 8) == 15
      assert Math.add!(7, -4) == 3
    end

    test "with strings" do
      assert Math.add!("a", "b") == "ab"
      assert Math.add!("c", "d") == "cd"
    end

    test "with lists" do
      assert Math.add!(["a", "b"], ["c", "d"]) == ["a", "b", "c", "d"]
    end

    # identity (you get the same value back)
    test "empty string" do
      assert Math.add!("", "") == ""
      assert Math.add!("a", "") == "a"
      assert Math.add!("", "a") == "a"
    end

    test "empty list" do
      assert Math.add!([], []) == []
      assert Math.add!([1], []) == [1]
      assert Math.add!([], [1]) == [1]
    end

    test "integer + zero" do
      assert Math.add!(0, 0) == 0
      assert Math.add!(1, 0) == 1
      assert Math.add!(0, 1) == 1
    end

    test "incompatible types (integer and string)" do
      assert_raise FunctionClauseError, fn ->
        Math.add!(5, "5")
      end

      assert_raise FunctionClauseError, fn ->
        Math.add!(5, "foo")
      end
    end

    test "invalid types (range and nil)" do
      assert_raise FunctionClauseError, fn ->
        Math.add!(1..10, nil)
      end
    end
  end

  describe "subtract/2" do
    test "with strings" do
      assert Math.subtract!("aa", "aa") == ""
      assert Math.subtract!("aaa", "aa") == "a"
      assert Math.subtract!("aba", "a") == "ba"
    end

    test "with integers" do
      assert Math.subtract!(2, 2) == 0
      assert Math.subtract!(3, 4) == -1
      assert Math.subtract!(17, 6) == 11
    end

    test "with lists" do
      assert Math.subtract!(["a", "a"], ["a", "a"]) == []
      assert Math.subtract!(["a", "a", "a"], ["a", "a"]) == ["a"]
      assert Math.subtract!(["a", "b", "a"], ["a"]) == ["b", "a"]
    end

    # identity (you get the same value back)
    test "empty string" do
      assert Math.subtract!("", "") == ""
      assert Math.subtract!("a", "") == "a"
      assert Math.subtract!("", "a") == ""
    end

    test "empty list" do
      assert Math.subtract!([], []) == []
      assert Math.subtract!(["a"], []) == ["a"]
      assert Math.subtract!([], ["a"]) == []
    end

    test "integer - zero" do
      assert Math.subtract!(10, 0) == 10
    end

    test "incompatible types (integer and string)" do
      assert_raise FunctionClauseError, fn ->
        Math.subtract!(5, "5")
      end

      assert_raise FunctionClauseError, fn ->
        Math.subtract!(5, "foo")
      end
    end

    test "invalid types (range and nil)" do
      assert_raise FunctionClauseError, fn ->
        Math.subtract!(1..10, nil)
      end
    end
  end
end
