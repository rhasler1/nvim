# Neovim configuration

### Setup
Place this directory as a child of $HOME/.config 

### Resources
- [Lua for neovim guide](https://neovim.io/doc/user/lua-guide.html)
- [Neovim user manual](https://neovim.io/doc/user/usr\_toc.html#user-manual)

### Project structure
```
nvim/
├── init.lua
├── lua
│   ├── core
│   │   ├── mappings.lua
│   │   └── options.lua
│   └── plugins
└── README.md
```
- init.lua: Load and run lua modules here (e.g., mappings.lua and options.lua)
- options.lua: Set Vim options here
- mappings.lua: Set Vim key mappings here

### Third party plugins
- I do not use third party plugins.
- See [LazyVim](https://www.lazyvim.org/configuration/lazy.nvim) if I wish to add third party plugins.
