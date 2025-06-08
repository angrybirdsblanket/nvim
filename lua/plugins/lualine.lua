return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    -- Battery percentage from Linux sysfs
    local function battery()
      local f = io.open("/sys/class/power_supply/BAT0/capacity", "r")
      if f then
        local pct = f:read("*l")
        f:close()
        return pct .. "%%"
      end
      return ""
    end

    require("lualine").setup({
      options = {
        theme                = "catppuccin",
        icons_enabled        = true,
        component_separators = { left = "", right = "" },
        section_separators   = { left = "", right = "" },
        disabled_filetypes   = { statusline = {}, winbar = {} },
        always_divide_middle = true,
      },
      sections = {
        lualine_a = {
          { "mode", icon = "" },
        },
        lualine_b = { "branch", "diff", "diagnostics" },
        lualine_c = { "filename" },
        lualine_x = {
          "encoding",
          "fileformat",
          "filetype",
          {
            function() return os.date("%H:%M") end,
            icon    = "",
            padding = { left = 1, right = 1 },
          },
          {
            battery,
            icon    = "",
            padding = { left = 1, right = 1 },
          },
        },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { "filename" },
        lualine_x = { "location" },
        lualine_y = {},
        lualine_z = {},
      },
      extensions = {},
    })
  end,
}

