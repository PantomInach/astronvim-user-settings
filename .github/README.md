# AstroNvim User Configuration Example

A user configuration template for [AstroNvim](https://github.com/AstroNvim/AstroNvim).

## Changes

* `Latex` support with 
  - [ltex](https://github.com/vigoux/ltex-ls.nvim) as a general lsp
  - [texlab](https://github.com/latex-lsp/texlab) for compiling `<Space> + m + l` and forward searching `<Space> + m + f`
* [Glow](https://github.com/charmbracelet/glow) support in nvim with `<Space> + G`
* [Hop](https://github.com/phaazon/hop.nvim) motions with `<Space> + f + l` to search for line and `<C-f>` to find word 
* Switching buffer with `<Shift> + h` and `<Shift> + l`
* Colorschemes: `decay`, `catppuccin` with `dark-decay` as default
* German language files
* Automatic installing of some lsp, linter, dap and formatter with treesitter installation
* [Undotree](https://github.com/mbbill/undotree) with keybinding `<Space> + U`
* [Treesitter-Context](https://github.com/nvim-treesitter/nvim-treesitter-context)
* [Harpoon](https://github.com/ThePrimeagen/harpoon) with keybindings
  + `Space + h + a` add file to harpoon
  + `Space + h + o` open quick menu
  + `Space + h + h` Go to previous mark
  + `Space + h + l` Go to next mark
  + `Space + h + c` Clear all marks
  + `Space + 1`, `Space + 2`, ..., `Space + 0` go to marked file 1 to 10
* [Fugitive](https://github.com/tpope/vim-fugitive) git client
  + `Space + g + g` opens fugitive git client
  + `Space + p` in fugitive pushes commits
  + `Space + P` pull from branch and rebases

## Customization 

See the [astrocumminity](https://github.com/AstroNvim/astrocommunity) plugins for more add-ons for your nvim config.

## 🛠️ Installation

#### Make a backup of your current nvim and shared folder

```shell
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
```

#### Clone AstroNvim

```shell
git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim
```

#### Clone the repository

```shell
git clone https://github.com/PantomInach/astronvim-user-settings ~/.config/nvim/lua/user
```

#### Install german spelling files

When these files are not present an error will be shown every time a file is opened.
Either use the command below or remove `de` from the [options.lua](https://github.com/PantomInach/astronvim-user-settings/blob/main/options.lua)'s `spelllang` variable.

```shell
sudo cp ~/.config/nvim/lua/user/spell/* /usr/share/nvim/runtime/spell
```

#### Start Neovim

```shell
nvim
```
