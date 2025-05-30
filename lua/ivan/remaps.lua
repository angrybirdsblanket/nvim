vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", [["_dP]])

vim.keymap.set({"n", "v"}, "<leader>d", "\"_d")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set({"n", "v"}, "<leader>l", ":Lazy sync<CR>")

vim.keymap.set({"n", "v"}, "<leader>wq", vim.cmd.wq)
vim.keymap.set({"n", 'v'}, "<leader>q", vim.cmd.q)
vim.keymap.set({"n", "v"}, "<leader><C-w>", vim.cmd.w)

vim.keymap.set({"n", "v"}, "<leader>y", '"+y')
vim.keymap.set('n', '<leader>cr', ':%s/\\r//g<CR>', { noremap = true, silent = true })

vim.keymap.set({"n", "v"}, "<leader>rd", ":!rider .<CR>")
