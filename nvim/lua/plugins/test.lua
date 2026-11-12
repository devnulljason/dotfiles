return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/nvim-nio",
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      { "nvim-treesitter/nvim-treesitter", branch = "main" },
      {
        "fredrikaverpil/neotest-golang",
        version = "*",
        dependencies = {
          "andythigpen/nvim-coverage", -- Added dependency
        },
      },
    },
    opts = {
      adapters = {
        ["neotest-golang"] = {
          runner = "gotestsum",
          go_test_args = {
            "-v",
            "-race",
            "-count=1",
            "-parallel=8",
            "-coverprofile=" .. vim.fn.getcwd() .. "/coverage.out",
          },
          gotestsum_args = {
            "--format=testdox",
            "--format-icons=octicons",
          },
        },
      },
    },
  },
  {
    "andythigpen/nvim-coverage",
    version = "*",
    config = function()
      require("coverage").setup({
        auto_reload = true,
      })
    end,
  },
}
