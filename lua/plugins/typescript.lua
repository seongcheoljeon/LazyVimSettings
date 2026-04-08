return {
  -- Neotest 어댑터 (Vitest / Jest)
  {
    "nvim-neotest/neotest",
    optional = true,
    dependencies = {
      "marilari88/neotest-vitest",
      "nvim-neotest/neotest-jest",
    },
    opts = {
      adapters = {
        ["neotest-vitest"] = {},
        ["neotest-jest"] = {
          jestCommand = "npx jest",
          cwd = function()
            return vim.fn.getcwd()
          end,
        },
      },
    },
  },

  -- ESLint은 린팅만, 포매팅은 Prettier에게 위임
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        eslint = {
          settings = {
            format = false,
          },
        },
      },
    },
  },
}
