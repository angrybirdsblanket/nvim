vim.g.mapleader = " "
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
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

vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle File Tree" })

vim.keymap.set("i", "<C-s>", function()
  local row, col = unpack(vim.api.nvim_win_get_cursor(0))

  local seq = vim.api.nvim_replace_termcodes("<Esc>ggVG=", true, false, true)
  vim.api.nvim_feedkeys(seq, "n", false)

  vim.cmd.write()

  vim.api.nvim_win_set_cursor(0, { row, col })

  local seq = vim.api.nvim_replace_termcodes(":".. row .. "<CR> 0" .. col .. "li", true, false, true)
  vim.api.nvim_feedkeys(seq, "n", false)

  vim.cmd.startinsert()
end, { silent = true, desc = "Format buffer and save" })

vim.keymap.set({"n", "v"}, "<leader>fy", 'ggVG"+y', { desc = "Yank file content to clipboard" })
vim.keymap.set({"n", "v"}, "<leader>fp", 'ggVG"+p', { desc = "Yank file content to clipboard" })

vim.keymap.set({"n", "v"}, "<leader>pb",
function()
  local branch = get_branch()

  local command = "push " .. branch

  vim.fn.jobstart(command)
end
)
