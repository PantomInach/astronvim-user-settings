# AstroNvim User Configuration Example

A user configuration template for [AstroNvim](https://github.com/AstroNvim/AstroNvim).

## Changes

* Added support for `latex` with automatic compiling and forward searching
* Automatic installing of some lsp, linter, dap and formatter with treesitter installation
* Switching buffer with `Shift + h` and `Shift + l`
* [Glow](https://github.com/charmbracelet/glow) support in nvim
* Colorschemes: `decay`, `catppuccin` with `dark-decay` as default

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

```shell
sudo cp ~/.config/nvim/lua/user/spell/* /usr/share/nvim/runtime/spell
```

#### Start Neovim

```shell
nvim
```
