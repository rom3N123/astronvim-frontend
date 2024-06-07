-- Customize None-ls sources

---@type LazySpec
return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim" -- eslint_d,
  },
  opts = function(_, config)
    -- config variable is the default configuration table for the setup function call
    local null_ls = require "null-ls"

    -- Check supported formatters and linters
    -- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    config.sources = {
      -- Set a formatter
      -- require("none-ls.formatting.eslint_d"),
      require("none-ls.diagnostics.eslint_d"),
      require("none-ls.formatting.eslint_d"),
      require("none-ls.code_actions.eslint_d"),
    }
    return config -- return final config table
  end,
}
