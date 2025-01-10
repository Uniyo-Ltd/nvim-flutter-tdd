# nvim.flutter.tdd

Neovim plugin for TDD flutter development.

## Installation

Install with your favorite package manager (e.g. [lazy.nvim](https://github.com/folke/lazy.nvim)).

```lua
{
    "Uniyo-Ltd/nvim.flutter.tdd",
    dependencies = { "neovim/nvim-lspconfig" },
    config = true,
}
```

## Usage

```vim
:CreateTest
```

## Configuration

```lua
require('nvim.flutter-tdd').setup()
```

### Closing Tags
