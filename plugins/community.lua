return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

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
  -- Preview markdown with :Glow
  { import = "astrocommunity.markdown-and-latex.glow-nvim" },
  -- Track programming activity
  { import = "astrocommunity.media.vim-wakatime" },
  -- Common configuration presets for options, mappings, and autocommands
  -- Uncomment after a while, I had an error before
  -- { import = "astrocommunity.motion.mini-basics" },
  -- a/i textobjects
  { import = "astrocommunity.motion.mini-ai" },
  -- Go forward/backward with square brackets
  { import = "astrocommunity.motion.mini-bracketed" },
  -- Move line/selection in all directions with Alt + hjkl
  { import = "astrocommunity.motion.mini-move" },
  -- Fast and feature-rich surround actions
  { import = "astrocommunity.motion.mini-surround" },
  -- Extends vim's % key to highlight, navigate, and operate on sets of matching text
  { import = "astrocommunity.motion.vim-matchup" },
  -- Bash language pack
  { import = "astrocommunity.pack.bash" },
  -- Json language pack
  { import = "astrocommunity.pack.json" },
  -- Lua language pack
  { import = "astrocommunity.pack.lua" },
  -- Markdown language pack
  { import = "astrocommunity.pack.markdown" },
  -- Tailwind CSS language pack
  { import = "astrocommunity.pack.tailwindcss" },
  -- YAML language pack
  { import = "astrocommunity.pack.yaml" },
  -- Animate scrolling
  { import = "astrocommunity.scrolling.mini-animate" },
  -- Highlight arguments
  { import = "astrocommunity.syntax.hlargs-nvim" },
  -- Easy alignment
  { import = "astrocommunity.syntax.vim-easy-align" },
}
