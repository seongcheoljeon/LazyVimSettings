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
choco install ripgrep fzf fd python tree-sitter
pip install pipx
pipx install cmakelint

# MinGW-w64 배포판 설치
winget install --id=BrechtSanders.WinLibs.POSIX.UCRT -e
```

## Install

```bash
# Linux / macOS
git clone https://github.com/seongcheoljeon/LazyVimSettings.git ~/.config/nvim

# Windows (PowerShell)
git clone https://github.com/seongcheoljeon/LazyVimSettings.git $env:LOCALAPPDATA\nvim
```

Neovim 실행 후 `:Lazy sync` 하면 플러그인 자동 설치.
