-- ----------------------------------------------------
-- General Config
-- ----------------------------------------------------
-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

local opt = {
    noremap = true,
    silent = true,
}

-- local var
local map = vim.api.nvim_set_keymap


-- modified H and L
map("v", "L", "g_", opt)
map("n", "L", "g_", opt)
map("v", "H", "^", opt)
map("n", "H", "^", opt)

-- buffer jump
-- more see bufferine below
map("n", "<F1>", ":wa<CR>:b#<CR>", opt)
map("n", "<F2>", ":wa<CR>:BufferLineCyclePrev<CR>", opt)
-- map("n", "<F2>", ":wa<CR>:bp<CR>", opt)
map("n", "<F3>", ":wa<CR>:BufferLineCycleNext<CR>", opt)
-- map("n", "<F3>", ":wa<CR>:bn<CR>", opt)
map("n", "<F4>", ":wa<CR>", opt)

map("i", "<F1>", "<ESC><F1>", {})
map("i", "<F2>", "<ESC><F2>", {})
map("i", "<F3>", "<ESC><F2>", {})
map("i", "<F4>", "<ESC><F2>", {})

map("v", "<F1>", "<ESC><F1>", {})
map("v", "<F2>", "<ESC><F2>", {})
map("v", "<F3>", "<ESC><F2>", {})
map("v", "<F4>", "<ESC><F2>", {})

-- fix :set wrap
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- fix :set wrap
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

-- For better Op
map("n", "J", "", {})
map("v", "J", "", {})
map("n", "Z", "ZZ", {})



-- ----------------------------------------------------
-- Windows split
-- ----------------------------------------------------

map("n", "<leader>wv", ":vsp<CR>", opt)
map("n", "<leader>wh", ":sp<CR>", opt)

-- close current win
map("n", "<leader>wc", "<C-w>c", opt)
-- close all other win
map("n", "<leader>wo", "<C-w>o", opt) -- close others

-- move
map("n", "<A-h>", "<C-w>h", opt)
map("n", "<A-j>", "<C-w>j", opt)
map("n", "<A-k>", "<C-w>k", opt)
map("n", "<A-l>", "<C-w>l", opt)

-- size control
map("n", "<C-Left>", ":vertical resize -2<CR>", opt)
map("n", "<C-Right>", ":vertical resize +2<CR>", opt)
map("n", "<C-Down>", ":resize +2<CR>", opt)
map("n", "<C-Up>", ":resize -2<CR>", opt)
map("n", "<leader>s=", "<C-w>=", opt)

