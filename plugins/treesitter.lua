return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- add more things to the ensure_installed table protecting against community packs modifying it
      opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
        "ruby"
      })
    end,
  },
  -- Location and syntax-aware text objects
  {
    "RRethy/nvim-treesitter-textsubjects",
    after = "nvim-treesitter",
    config = function()
      require("nvim-treesitter.configs").setup {
        textsubjects = {
          enable = true,
          prev_selection = ",", -- (Optional) keymap to select the previous selection
          keymaps = {
            ["."] = "textsubjects-smart",
            [";"] = "textsubjects-container-outer",
            ["i;"] = "textsubjects-container-inner",
          },
        },
      }
    end,
  },
  -- Show code context
  {
    "romgrk/nvim-treesitter-context",
    after = "nvim-treesitter",
  },
  {
    -- Better commenting
    "JoosepAlviste/nvim-ts-context-commentstring",
    after = "nvim-treesitter",
    config = function()
      require("nvim-treesitter.configs").setup {
        context_commentstring = {
          enable = true,
        },
      }
    end,
  },
}
