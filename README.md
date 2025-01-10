# nvim-flutter-tdd

<div align="center">

🚀 **Supercharge Your Flutter TDD Workflow in Neovim** 🚀

<video autoplay loop muted playsinline>
  <source src="https://github.com/Uniyo-Ltd/nvim-flutter-tdd/assets/demo.mp4" type="video/mp4">
</video>

[![Lua](https://img.shields.io/badge/Made%20with-Lua-blue.svg?style=for-the-badge&logo=lua)](http://lua.org)
[![Neovim](https://img.shields.io/badge/For-Neovim-green.svg?style=for-the-badge&logo=neovim)](https://neovim.io)
[![Flutter](https://img.shields.io/badge/Flutter-TDD-blue.svg?style=for-the-badge&logo=flutter)](https://flutter.dev)

*A sleek Neovim plugin that automates test file creation for Flutter projects, making Test-Driven Development a breeze* ✨

[Features](#features) • [Installation](#installation) • [Usage](#usage) • [Configuration](#configuration)

</div>

## ✨ Features

- 🚀 Instantly generate test files from source
- 📁 Automatically creates test directory structure
- 🎯 Follows Flutter testing conventions
- 💡 Smart file naming and organization


## 📦 Installation

### Using [lazy.nvim](https://github.com/folke/lazy.nvim)
```lua
{
    'Uniyo-Ltd/nvim-flutter-tdd',
    config = function()
        require('flutter-tdd').setup()
    end
}
```

## 🚀 Quick Start

1. Open a Flutter source file in your `lib` directory
2. Run `:CreateTest`
3. A new test file will be created and opened automatically

## ⚙️ Configuration

```lua
require('flutter-tdd').setup({
    -- Default configuration (coming soon)
})
```
## 🤝 Contributing

Contributions are welcome! Feel free to:
- 🐛 Report bugs
- 💡 Suggest features
- 📝 Submit pull requests
