defmodule Math do
  @doc """
  Add two integers
  """
  def add(int1, int2) when is_integer(int1) and is_integer(int2) do
    int1 + int2
  end

  def add(str1, str2) when is_binary(str1) and is_binary(str2) do
    str1 <> str2
  end

  def add(list1, list2) do
    # list1 ++ list2 => r, g, r
    # => r, g
    # [list1 | list2]
    [list1 | list2] |> List.flatten()
  end

  def subtract(int1, int2) when is_integer(int1) and is_integer(int2) do
    int1 - int2
  end

  def subtract(list1, list2) do
    list1 -- list2
  end
end
