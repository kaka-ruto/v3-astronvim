return {
  -- Add plugins that are more project-specific here
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    -- Move to alternate file
    "rgroli/other.nvim",
    config = function() require("other-nvim").setup { mappings = { "rails" } } end,
    event = "User AstroFile",
  },
}
