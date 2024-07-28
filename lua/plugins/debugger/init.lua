return {
  {
    "mfussenegger/nvim-dap",
    lazy = false,
    dependencies = {
      "rcarriga/nvim-dap-ui",
      "nvim-neotest/nvim-nio",
    },
    config = function()
      require "plugins.debugger.config"
    end,
  },
  {
    "leoluz/nvim-dap-go",
    ft = "go",
    config = true,
  },
}
