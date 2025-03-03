return {
  'rebelot/terminal.nvim',
  config = function()
    require("terminal").setup()
    vim.keymap.set("n", "<C-`>", function()
      require("terminal").toggle()
    end, { noremap = true, silent = true })
  end
}

