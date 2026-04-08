# LazyVim Config

## Prerequisites

### Linux (apt)
```bash
sudo apt install ripgrep fzf fd-find pipx
pipx install cmakelint
```

### macOS (brew)
```bash
brew install ripgrep fzf fd pipx
pipx install cmakelint
```

### Windows (choco)
```powershell
choco install ripgrep fzf fd python
pip install pipx
pipx install cmakelint
```

## Install

```bash
# Linux / macOS
git clone <repo-url> ~/.config/nvim

# Windows (PowerShell)
git clone <repo-url> $env:LOCALAPPDATA\nvim
```

Neovim 실행 후 `:Lazy sync` 하면 플러그인 자동 설치.
