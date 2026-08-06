# Neovim configuration

## Setup
Place this directory as a child of $HOME/.config 

## Resources
- [Lua for neovim guide](https://neovim.io/doc/user/lua-guide.html)
- [Neovim user manual](https://neovim.io/doc/user/usr\_toc.html#user-manual)

## Project structure
```
nvim/
├── init.lua
├── lua
│   ├── core
│   │   ├── mappings.lua
│   │   └── options.lua
│   └── lazy
│       └── lazy.lua
└── README.md
```

- init.lua: Load and run lua modules here (e.g., mappings.lua and options.lua)
- core/options.lua: Set Vim options here
- core/mappings.lua: Set Vim key mappings here
- lazy/lazy.lua: Set up plugins
    - Currently: gruxbox, mason-lspconfig (rust_analyzer), autocomplete
