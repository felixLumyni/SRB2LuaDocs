# SRB2LuaDocs
(Work in progress) Now you can have [SRB2](https://www.srb2.org/)'s functions syntax highlighting in your favourite code editor, and not just [SLADE](slade.mancubus.net/).

## How do I download just the LUA?
View it here in github -> Raw -> Right Click -> Save as file

## Installation example ([Visual Studio Code](https://code.visualstudio.com/))
- Install the [Lua extension by sumneko](https://marketplace.visualstudio.com/items?itemName=sumneko.lua)
- Go to View > Command Palette (or press Ctrl + Shift + P) -> "Preferences: Open user Settings (JSON)"
- Add this in, and change the location inside of the brackets:
```json
"Lua.workspace.library": [
  "C:\\WHEREVER\\YOU\\INSTALLED\\THE\\LIBRARY.lua"
],
"Lua.diagnostics.enable": false,
```
And ggs! You're ready to code your SRB2 mods in VS Code.
