# **Neovim Configuration**

Welcome to my personal Neovim configuration repository. This configuration is entirely written in Lua and uses **`lazy.nvim`** as the plugin manager.

## **License**

This project is licensed under the MIT License - see the [LICENSE](https://opensource.org/license/mit/) file for details.

## **Installation**

To use this configuration, clone this repository into your Neovim configuration directory:

```bash
git clone https://github.com/danewalters/nvim.git ~/.config/nvim
```

## **Plugin Manager**

This configuration uses [lazy.nvim](https://github.com/folke/lazy.nvim) as the plugin manager for efficient management of Neovim plugins.

## **Plugins**

Here is a list of plugins included in this configuration:

- **Autopair Tool**: [nvim-autopairs](https://github.com/windwp/nvim-autopairs) for automatic bracket pairing.
- **Code Commenting Tool**: [Comment.nvim](https://github.com/numToStr/Comment.nvim) to easily comment code.
- **LSP Progress Tool**: [fidget.nvim](https://github.com/j-hui/fidget.nvim) for displaying LSP progress.
- **Git Status in Coding**: [vim-gitgutter](https://github.com/airblade/vim-gitgutter) to show Git status.
- **Completion Sources and Tools**: Various **`lsp-cmp`** completion sources and tools, including:
    - **`hrsh7th/nvim-cmp`**
    - **`hrsh7th/cmp-nvim-lsp`**
    - **`hrsh7th/cmp-nvim-lua`**
    - **`hrsh7th/cmp-buffer`**
    - **`hrsh7th/cmp-path`**
    - **`hrsh7th/cmp-cmdline`**
    - **`saadparwaiz1/cmp_luasnip`**
    - **`L3MON4D3/LuaSnip`**
    - **`hrsh7th/cmp-nvim-lsp-signature-help`**
- **LSP Configuration**: [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) for setting up language servers.
- **Status Line Tool**: [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) for a customizable status line.
- **Language Server Manager**: [mason.nvim](https://github.com/williamboman/mason.nvim) for managing language servers.
- **File Tree Navigation**: [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua) for file exploration.
- **File Icons**: [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons) for file icons.
- **Theme**: [onedark.nvim](https://github.com/navarasu/onedark.nvim) for the One Dark color scheme.
- **File Search and Fuzzy Finder**: [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) for file searching and fuzzy finding.
- **Code Highlighting**: [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) for code syntax highlighting.

## **Configuration**

All configurations are written in Lua. You can find the configuration files in the **`lua`** directory. Feel free to customize them to fit your needs.

## **Contributing**

Contributions are welcome! Please feel free to fork, edit, and submit a pull request.
