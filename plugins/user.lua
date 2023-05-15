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
    config = function()
      require("other-nvim").setup {
        mappings = {
          "rails",
          {
            -- (.*) is a folder/file name
            -- %1 is the first folder/file name, %2 is the second folder/file name, and so forth
            pattern = "gems/(.*)/spec/app/units/(.*)/(.*)/(.*)_spec.rb",
            target = "gems/%1/app/units/%2/%3/%4.rb",
            context = "rb",
          },
          {
            pattern = "gems/(.*)/app/units/(.*)/(.*)/(.*).rb",
            target = "gems/%1/spec/app/units/%2/%3/%4_spec.rb",
            context = "spec",
          },
        },
      }
    end,
    event = "User AstroFile",
  },
}
