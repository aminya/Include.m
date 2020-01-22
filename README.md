# AddPather.m
Adds folders to Matlab's path temporarily. It is somehow similar to `include` in other languages.

To use this package, add this folder to your path, and edit and run run_addpather.m accordingly.

You can add `run_addpather.m` to the beginning of your master code.

Instead of adding this package to the path, you can copy the content of the folder to your project.

# addpather function

# Arguments:
addpather(method::String, [folders::Array{String}/Cell{Char}])

 - method: can be "all","all_exclude","specific","GUI_all","GUI_specific"
 - folders (optional):
  - if method is "all_exclude": pass the folder names that should be excluded
  - if method is "specific": pass the folder names that should be included

Folders specified in the 2nd argument can have a relative as well as absolute path.

# Example run_addpather
Choose the method, and run the script.
```matlab
% runs the function:
addpather("all");
```

Pass a 2nd output to include/exclude specific folders if you chose "all_exclude" or "specificFolders"
```matlab
% runs the function:
addpather("specific", ["src", "examples"]); % or addpather("specific", {'src', 'examples'});
```

# License
This package is licensed under Apache license 2.0.
