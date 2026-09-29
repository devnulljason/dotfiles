return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      gopls = {
        gofumpt = true,
      },
    },
    inlay_hints = {
      enabled = false,
    },
  },
}
