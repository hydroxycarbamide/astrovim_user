return {
  {
    "Exafunction/codeium.nvim",
    enabled = true,
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    event = "BufEnter",
    config = function() require("codeium").setup {} end,
  },
  {
    "Saghen/blink.cmp",
    optional = true,
    dependencies = {
      "codeium.nvim",
    },
    specs = {
      -- install the blink, nvim-cmp compatibility layer
      { "Saghen/blink.compat", version = "*", lazy = true, opts = {} },
    },
    opts = {
      sources = {
        default = { "codeium" },
        providers = {
          codeium = {
            name = "codeium",
            module = "blink.compat.source",
            score_offset = 100,
            async = true,
          },
        },
      },
    },
  },
}
