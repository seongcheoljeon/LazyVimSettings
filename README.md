# LazyVim Config

## Prerequisites

### Linux (apt)

```bash
# Neovim Install

# 기존 apt neovim 제거 (있다면)
sudo apt remove neovim -y

# 최신 stable tarball 다운로드
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz

# /opt에 설치
sudo rm -rf /opt/nvim-linux-x86_64
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz

# 정리
rm nvim-linux-x86_64.tar.gz
```

```bash
echo 'export PATH="$PATH:/opt/nvim-linux-x86_64/bin"' >> ~/.zshrc
source ~/.zshrc
```

```bash
nvim --version
```

```bash
sudo apt install git gcc unzip curl ripgrep fzf fd-find pipx
pipx install cmakelint
```

> `fd`는 `Ubuntu`에서 `fdfind`로 설치됨. `LazyVim`이 `fd`를 찾으므로 심볼릭 링크 필요:

```bash
mkdir -p ~/.local/bin
ln -sf $(which fdfind) ~/.local/bin/fd
# ~/.zshrc에 ~/.local/bin이 PATH에 있는지 확인
```

### macOS (brew)

```bash
brew install git gcc fd-find unzip curl ripgrep fzf fd pipx
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
