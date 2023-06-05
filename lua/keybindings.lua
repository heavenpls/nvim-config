vim.g.mapleader = " "
vim.g.maplocalleader = " "
-- 保存本地变量
local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true }

map('n', '<A-m>', ':NvimTreeToggle<CR>', opt) -- 打开文件选择导航条
map("n", "<A-h>", "<C-w>h", opt) -- 光标左侧窗口
map("n", "<A-j>", "<C-w>j", opt)
map("n", "<A-k>", "<C-w>k", opt)
map("n", "<A-l>", "<C-w>l", opt)
map("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)
map("n","j","5j",opt)
map("n","k","5k",opt)
map("n","<A-t>",":TranslateW --engines=bing<CR>",opt) -- 翻译
map("n","<C-s>",":w<CR>",opt)
map("i","\"","\"\"",opt)
map("i","\'","\'\'",opt)
map("n", "<c-F>",
  "<cmd>lua require('fzf-lua').files()<CR>", { silent = true })
