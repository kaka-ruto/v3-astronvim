-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", desc = "Pick to close" },
    ["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = "Pick to jump" },
    ["<leader>bt"] = { "<cmd>BufferLineSortByTabs<cr>", desc = "Sort by tabs" },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    ["q"] = "<Nop>", -- Disable the "recording" mode
    -- Map <Enter> in normal mode to insert a newline character and keep the cursor in normal mode
    ["<CR>"] = { ':call append(".", "")<Bar>normal! j0<CR>', noremap = true, silent = true },
    -- Yank all lines in file
    ["<leader>co"] = {
      [[:%y+<CR>:silent !echo "Yanked " . line('$') . " lines to clipboard"<CR>]],
      noremap = true,
    },
    -- Select whole file contents (like ctrl A)
    ["<leader>vv"] = { [[ggVG]], noremap = true },
    -- Ctrl A + paste
    ["<leader>pp"] = { [[ggVGp]], noremap = true },
    -- Copy current file path
    ["<leader>cd"] = { [[:let @+=expand('%')<CR>]], noremap = true },
    -- Copy current file name with extension
    ["<leader>cf"] = { [[:let @+=expand('%:t')<CR>]], noremap = true },
    -- Copy current file path with line number
    ["<leader>cl"] = { [[:let @+=expand('%') . ':' . line('.')<CR>]], noremap = true },
    -- Open a file in the same dir as the open buffer
    [",e"] = { [[:e <C-R>=expand("%:h") . "/" <CR>]] },
    -- Split open a file in the same dir as the open buffer
    [",v"] = { [[:vs <C-R>=expand("%:h") . "/" <CR>]] },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
