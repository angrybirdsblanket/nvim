return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    require("bufferline").setup({
      options = {
        diagnostics = "nvim_lsp",
        show_buffer_close_icons = false,
        show_close_icon = false,
        separator_style = "slant",
      },
    })
    vim.keymap.set("n", "<Tab>", "<cmd>BufferLineCycleNext<cr>")
    vim.keymap.set("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<cr>")
    vim.keymap.set("n", "<leader>bc", ":bd<cr>")
  end,
}

