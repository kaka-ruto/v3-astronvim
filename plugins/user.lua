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
          -- Test to fixtures
          {
            pattern = "test/models/(.*)_test.rb",
            target = "test/fixtures/%1.yml",
            transformer = "pluralize",
            context = "fixtures",
          },
          {
            pattern = "test/fixtures/(.*).yml",
            target = "test/models/%1_test.rb",
            transformer = "singularize",
            context = "spec",
          },
          -- Gemfile to Gemfile.lock
          {
            pattern = "Gemfile",
            target = "Gemfile.lock",
            context = "lock",
          },
          {
            pattern = "Gemfile.lock",
            target = "Gemfile",
            context = "lock",
          },
        },
        style = {
          border = "rounded",
          seperator = "|",
          width = 0.8,
          minHeight = 2,
        },
      }
    end,
    event = "User AstroFile",
  },

  {
    "nvim-neotest/neotest",
    dependencies = { "olimorris/neotest-rspec", "zidhuss/neotest-minitest" },
    ft = { "ruby" },
    config = function()
      -- get neotest namespace (api call creates or returns namespace)
      local neotest_ns = vim.api.nvim_create_namespace "neotest"
      vim.diagnostic.config({
        virtual_text = {
          format = function(diagnostic)
            local message = diagnostic.message:gsub("\n", " "):gsub("\t", " "):gsub("%s+", " "):gsub("^%s+", "")
            return message
          end,
        },
      }, neotest_ns)
      require("neotest").setup {
        adapters = {
          require "neotest-rspec",
          require "neotest-minitest",
        },
      }
    end,
  },
}
