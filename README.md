# Include.m
Adds folders to Matlab's path temporarily. It is somehow similar to `include` in other languages.

To use this package, add this folder to your path, and call `include()` function. Instead you can copy the content of this package to your project.

Use `run_include` if you need an executable.

# include function

`include(method::String, [folders::Array{String}/Cell{Char}])`

 - method: can be `"all","all_exclude","specific","GUI_all","GUI_specific"`
 - folders (optional):
  - if method is `"all_exclude"`: pass the folder names that should be excluded
  - if method is `"specific"`: pass the folder names that should be included

Folders specified in the 2nd argument can have a relative as well as absolute path.

# Example run_include
Choose the method, and run the function.
```matlab
include("all");
```

Pass a 2nd output to include/exclude specific folders if you chose "all_exclude" or "specificFolders"
```matlab
include("specific", ["src", "examples"]); % or include("specific", {'src', 'examples'});
```

# License
This package is licensed under Apache license 2.0.
