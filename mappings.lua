-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  -- Normal mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    ["q"] = "<Nop>", -- Disable the "recording" mode
    -- Map <Enter> in normal mode to insert a newline character and keep the cursor in normal mode
    ["<CR>"] = { ':call append(".", "")<Bar>normal! j0<CR>', noremap = true, silent = true },
    -- Yank all lines in file
    ["<leader>co"] = { [[:%y+ <CR> ]], noremap = true, silent = true },
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
    ["<leader>a"] = { [[:OtherVSplit<CR>]]},
    -- Telescope find in dir
    ["<leader>fd"] = { [[:Telescope dir find_files<CR>]], noremap = true, silent = true },
    -- Telescope grep dir
    ["<leader>gd"] = { [[:Telescope dir live_grep<CR>]], noremap = true, silent = true },
    -- Rename all occurrences of word under cursor
    ["lr"] = {
      function()
        local old_word = vim.fn.expand "<cword>"
        local new_word = vim.fn.input("Replace " .. old_word .. " by? ", old_word)
        -- Check if the new_word is different from the old_word and is not empty
        if new_word ~= old_word and new_word ~= "" then
          vim.cmd(":%s/\\<" .. old_word .. "\\>/" .. new_word .. "/g")
        end
      end,
    },
    -- Create a new file in the current directory, with current buffer contents
    -- If the immediate directory does not exist, create it
    -- Switch to the new file
    ["<leader><leader>cf"] = {
      function()
        local full_path = vim.fn.expand "%:p"
        local short_path = vim.fn.fnamemodify(full_path, ':~:.')
        local new_file_path = vim.fn.input("Copy paste to new file in: ", short_path)

        if new_file_path ~= "" then
          local new_file_path_directory = vim.fn.fnamemodify(new_file_path, ':h')

          if vim.fn.isdirectory(new_file_path_directory) == 0 then
            vim.fn.mkdir(new_file_path_directory, 'p')
          end

          vim.cmd("w " .. new_file_path)
          vim.cmd [[normal! ggVGy]]
          vim.cmd [[normal! G\"0P]]
          vim.cmd("e " ..new_file_path)
        end
      end,
    },
  },

  -- Terminal mode
  t = {
    -- setting a mapping to true will disable it
    -- ["<esc>"] = true,
  },
}
