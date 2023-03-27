return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- { import = "astrocommunity.colorscheme.catppuccin" },
  -- Copilot
  { import = "astrocommunity.completion.copilot-lua-cmp" },
  -- Add mode to the statusline
  { import = "astrocommunity.bars-and-lines.heirline-mode-text-statusline" },
  -- Increment & decrement numbers with <C-a> & <C-x>
  { import = "astrocommunity.editing-support.dial-nvim" },
  -- Split and join arguments with gS & gJ
  { import = "astrocommunity.editing-support.mini-splitjoin" },
  -- Explain regex with gR
  { import = "astrocommunity.editing-support.nvim-regexplainer" },
  -- Rainbow parentheses
  { import = "astrocommunity.editing-support.nvim-ts-rainbow2" },
  -- Split and join blocks of code with space m
  { import = "astrocommunity.editing-support.treej" },
}
