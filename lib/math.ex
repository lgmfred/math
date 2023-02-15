defmodule Math do
  @moduledoc """
  Documentation for `Math`.
  """
  def add(a, b) do
    cond do
      is_integer(a) and is_integer(b) -> a + b
      is_binary(a) and is_binary(b) -> a <> b
      is_list(a) and is_list(b) -> a ++ b
      true -> raise ArgumentError, "#{inspect(a)} and #{inspect(b)} are invalid inputs"
    end
  end

  def subtract(a, b) do
    cond do
      is_integer(a) and is_integer(b) ->
        a - b

      is_binary(a) and is_binary(b) ->
        list_a = String.split(a, "", trim: true)
        list_b = String.split(b, "", trim: true)

        (list_a -- list_b)
        |> List.to_string()

      is_list(a) and is_list(b) ->
        a -- b

      true ->
        raise ArgumentError, "#{inspect(a)} and #{inspect(b)} are invalid inputs"
    end
  end
end
