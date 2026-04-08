return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ruff = {
          mason = false, -- pip 없는 환경이므로 mason 자동설치 비활성화
        },
      },
    },
  },
}
