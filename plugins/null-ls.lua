return {
  "jose-elias-alvarez/null-ls.nvim",

  opts = function(_, config)
    -- config variable is the default configuration table for the setup function call
    local null_ls = require "null-ls"
    local formatting = null_ls.builtins.formatting
    local diagnostics = null_ls.builtins.diagnostics
    local conditional = function(fn)
      local utils = require("null-ls.utils").make_conditional_utils()
      return fn(utils)
    end

    -- Check supported formatters and linters
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    config.sources = {
      -- Rubocop
      -- Use bundle exec rubocop if we have a Gemfile, else, just rubocop
      conditional(
        function(utils)
          return utils.root_has_file "Gemfile"
              and formatting.rubocop.with {
                command = "bundle",
                args = vim.list_extend({ "exec", "rubocop" }, formatting.rubocop._opts.args),
              }
              or formatting.rubocop
        end
      ),
      conditional(
        function(utils)
          return utils.root_has_file "Gemfile"
              and diagnostics.rubocop.with {
                command = "bundle",
                args = vim.list_extend({ "exec", "rubocop" }, null_ls.builtins.diagnostics.rubocop._opts.args),
              }
              or diagnostics.rubocop
        end
      ),

      -- Standardrb
      -- formatting.standardrb,
      -- diagnostics.standardrb,

      -- ERB
      formatting.erb_lint,
      diagnostics.erb_lint,
    }

    return config -- return final config table
  end,
}
