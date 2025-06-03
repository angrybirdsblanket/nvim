return {
  "nvim-tree/nvim-tree.lua",
  lazy = false,  
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("nvim-tree").setup({
      view = {
        side = "right",
        width = 30,
        preserve_window_proportions = true,
      },
      update_focused_file = {
        enable = true,
        update_cwd = false,
      },
      filters = {
        dotfiles = false,
      },
    })

  end,
}

