return {
  {
    "stevearc/conform.nvim",
    -- event = "BufWritePre", -- uncomment for format on save
    lazy = false,
    config = function()
      require "configs.conform"
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "lua",
        "html",
        "css",
        "go",
        "typescript",
        "javascript",
        "ruby",
        "hcl",
        "rbs",
        "graphql",
        "yaml",
      },
    },
  },
}
