return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("nvim-tree").setup({
      view = {
        width = 30,
        side = "right",
        preserve_window_proportions = true,
      },
      update_focused_file = {
        enable = true,
        update_cwd = false,
      },
      actions = {
        open_file = {
          resize_window = true,
        },
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = false,
      },
    })

    -- Open explicitly to debug
    vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Open File Tree" })
  end,
}

