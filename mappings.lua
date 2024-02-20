-- Mapping data with "desc" stored directly by vim.keymap.set().
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

    ["<leader>fw"] = { function() require("telescope.builtin").live_grep { additional_args = function(args) return vim.list_extend(args, { "--hidden", "--no-ignore" }) end, } end, desc = "Find words in all files", },
    -- View treesitter highlight groups
    ["<space>k"] = { ":TSHighlightCapturesUnderCursor<cr>", desc = "View Highlight Group" },
    -- Easy splits
    ["\\"] = { "<cmd>split<cr>", desc = "Horizontal split" },
    ["|"] = { "<cmd>vsplit<cr>", desc = "Vertical split" },
    -- Search highlight groups
    ["<space>sg"] = { "<cmd>Telescope highlights<cr>", desc = "Highlight groups" },
    ["<A-2>"] = { function () require("aerial").toggle() end, desc = "Symblos outline"},
    ["<A-o>"] = { "<cmd>ClangdSwitchSourceHeader<cr>", desc = "switch header or source code" },
    ["gh"] = {"<cmd>lua vim.lsp.buf.hover()<cr>", desc = "show function signature"}
  },
  v = {
    -- ["C-."] = { "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>", desc = "comment visual select"}
  }
}
