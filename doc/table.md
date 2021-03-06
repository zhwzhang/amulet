
# Extra table functions

The following functions suplement the standard Lua table functions.

### table.shallow_copy(t)       {#table.shallow_copy .func-def}

Returns a shallow copy of `t` (i.e. a new table
with the same keys and values as `t`).

### table.deep_copy(t)          {#table.deep_copy .func-def}

Returns a deep copy of `t` (all `t`'s keys and values
are copied recursively). Cycles are detected and reproduced
in the new table.

### table.search(arr, elem)       {#table.search .func-def}

Return the index of `elem` in `arr` or nil if it's not found.

### table.clear(t)              {#table.clear .func-def}

Remove all `t`'s pairs.

### table.remove_all(arr, elem)    {#table.remove_all .func-def}

Remove all values equal to `elem` from `arr`.

### table.append(arr1, arr2)    {#table.append .func-def}

Inserts all of `arr2`'s values at the end of `arr1`.

### table.merge(t1, t2)         {#table.merge .func-def}

Sets all the key-value pairs from `t2` in `t1`.

### table.keys(t)               {#table.keys .func-def}

Returns an array of `t`'s keys.

### table.values(t)             {#table.values .func-def}

Returns an array of `t`'s values.

### table.filter(arr, f)          {#table.filter .func-def}

Returns a new array which contains only the values from
`arr` for which `f(elem)` returns true (or any value besides
`nil` or `false`).

### table.tostring(t)   {#table.tostring .func-def}

Converts a table to a string.
The returned string is a valid Lua table literal.
