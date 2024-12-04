# Elixir Function Clause Matching Error

This repository demonstrates a common error in Elixir related to function clause matching.  The `reverse_string` function is designed to handle both binary strings and lists, but fails to handle other data types. This leads to a `FunctionClauseError` when an unexpected type (like an integer) is passed as an argument.

The `bug.ex` file contains the erroneous code. The `bugSolution.ex` demonstrates how to improve the function to handle unexpected input gracefully. 

This example showcases the importance of exhaustive function clause matching and using guards effectively in Elixir.