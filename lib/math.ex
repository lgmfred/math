defmodule Math do
  @moduledoc """
  `Math` module just for abstraction.
  """
  
  @doc """
  Add the two arguments together

  ## Examples

      iex> Math.add!(3, -2)
      1

      iex> Math.add!(6.7, -0.7)
      6.0

      iex> Math.add!("foo", "baar")
      "foobaar"

      iex> Math.add!([:a, "b"], [{:c}, [:d]])
      [:a, "b", {:c}, [:d]]

      iex> Math.add!(%{a: "a"}, %{b: :b})
      ** (FunctionClauseError) no function clause matching in Math.add!/2

      iex> Math.add!([a: "a"], [b: :b])
      [a: "a", b: :b]
  """
  def add!(a, b) when is_number(a) and is_number(b), do: a + b
  def add!(a, b) when is_binary(a) and is_binary(b), do: a <> b
  def add!(a, b) when is_list(a) and is_list(b), do: a ++ b

  @doc """
  Subtract two arguments
  
  ## Examples
  
      iex> Math.subtract!(3, -2)
      5

      iex> Math.subtract!(6.7, -0.7)
      7.4

      iex> Math.subtract!("foobaar", "baar")
      "foo"

      iex> Math.subtract!([:a, "b", {:c}, [:d]], [{:c}, [:d]])
      [:a, "b"]

      iex> Math.subtract!(%{a: "a"}, %{b: :b})
      ** (FunctionClauseError) no function clause matching in Math.subtract!/2

      iex> Math.subtract!([a: "a", b: :b], [a: "a"])
      [b: :b]
  """
  def subtract!(a, b) when is_number(a) and is_number(b), do: a - b
  def subtract!(a, b) when is_list(a) and is_list(b), do: a -- b

  def subtract!(a, b) when is_binary(a) and is_binary(b) do
    list_a = String.split(a, "", trim: true)
    list_b = String.split(b, "", trim: true)

    (list_a -- list_b)
    |> List.to_string()
  end
end
