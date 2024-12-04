```elixir
defmodule StringHelper do
  def reverse_string(str) when is_binary(str) do
    String.reverse(str)
  end
  def reverse_string(str) when is_list(str) do
    Enum.reverse(str)
  end
  def reverse_string(other) do
    #Handle other types gracefully
    IO.puts "Cannot reverse this type: #{inspect(other)}"
    other
  end
end

IO.puts StringHelper.reverse_string("hello")
IO.puts StringHelper.reverse_string([1,2,3,4,5])
IO.puts StringHelper.reverse_string(123)  #Now handles integer gracefully
IO.puts StringHelper.reverse_string(%{}) #Handles map gracefully
```