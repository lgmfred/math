defmodule Math do
  @moduledoc """
  `Math` module just for abstraction.
  """

  @doc """
  Add the two arguments together
  """
  def add!(a, b) when is_integer(a) and is_integer(b), do: a + b
  def add!(a, b) when is_binary(a) and is_binary(b), do: a <> b
  def add!(a, b) when is_list(a) and is_list(b), do: a ++ b

  @doc """
  Subtract two arguments
  """
  def subtract!(a, b) when is_integer(a) and is_integer(b), do: a - b
  def subtract!(a, b) when is_list(a) and is_list(b), do: a -- b

  def subtract!(a, b) when is_binary(a) and is_binary(b) do
    list_a = String.split(a, "", trim: true)
    list_b = String.split(b, "", trim: true)

    (list_a -- list_b)
    |> List.to_string()
  end
end
