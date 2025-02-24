return {
    "ThePrimeagen/vim-be-good",
    config = function()
        vim.keymap.set("n", "<leader>vbg", vim.cmd.VimBeGood)
    end
}
