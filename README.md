# Lua Nil Handling Bug

This repository demonstrates a subtle but important difference in how Lua handles nil arguments in function calls. The issue arises when comparing calls with explicitly passed nil values and calls with missing arguments. In Lua, both missing arguments and explicitly passed nil values are considered nil. However, their behavior in function calls may vary depending on how the function is defined and the context in which it's used. 

## The Bug

The `bug.lua` file showcases a function that checks for nil arguments. When called with `nil` as an argument, it behaves as expected; however, when called without an argument, the behavior can be counterintuitive. This difference can lead to unexpected errors in programs, particularly when dealing with optional arguments.

## The Solution

The solution presented in `bugSolution.lua` resolves this by explicitly checking for the absence of arguments using `select('#', ...)` which returns the number of arguments. This approach provides a clear and consistent way to handle both explicit nil arguments and missing arguments.