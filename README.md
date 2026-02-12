# Neovim configuration

### Setup
Place this directory as a child of $HOME/.config 

### Resources
- [Lua for neovim guide](https://neovim.io/doc/user/lua-guide.html)
- [Neovim user manual](https://neovim.io/doc/user/usr\_toc.html#user-manual)

### Directory structure
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
- options.lua: Set Vim options here
- mappings.lua: Set Vim key mappings here

### Third party plugins
- Currently, I do not use third party plugins.
- See [LazyVim](https://www.lazyvim.org/configuration/lazy.nvim) if I wish to add.
