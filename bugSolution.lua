local function foo(x)
  if select('#', ...) == 0 then -- Check for missing arguments
    return nil  -- Handle missing arguments explicitly
  elseif x == nil then
    return nil
  end
  return x + 1
end

print(foo(nil)) -- Output: nil
print(foo(5))   -- Output: 6
print(foo())   -- Output: nil