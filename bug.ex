```elixir
defmodule StringHelper do
  def reverse_string(str) do
    String.reverse(str)
  end
end

IO.puts StringHelper.reverse_string("hello") # This works fine

defmodule StringHelper do
  def reverse_string(str) when is_binary(str) do
    String.reverse(str)
  end
  def reverse_string(str) when is_list(str) do
    Enum.reverse(str)
  end
end

IO.puts StringHelper.reverse_string("hello") # This works fine
IO.puts StringHelper.reverse_string([1,2,3,4,5]) # This works fine
IO.puts StringHelper.reverse_string(123) # This will cause a function clause matching error
```