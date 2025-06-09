-- lua/plugins/colorscheme.lua
-- Plugin specification for lazy.nvim to load the rose-pine colorscheme
-- return {
--   {
--     "rose-pine/neovim",          -- GitHub repo for the rose-pine theme
--     name = "rose-pine",           -- Optional alias
--     lazy = false,                  -- Load immediately (not lazily)
--     priority = 1000,               -- Ensure this loads before other plugins
--     config = function()
--       require("rose-pine").setup({
--         --- You can add your custom rose-pine settings here
--         --- For example:
--         --- dark_variant = "moon",
--         --- bold_vert_split = false,
--         --- dim_nc_background = false,
--       })
--       -- Set the colorscheme
--       vim.cmd("colorscheme rose-pine")
--     end,
--   },
-- }

return {
    "catppuccin/nvim", 
    name = "catppuccin",
    lazy = false, 
    priority = 1000, 
    config = function()
      vim.opt.termguicolors = true
        require("catppuccin").setup({
            flavour = "mocha", 
            transparent_background = true, 
            integrations = {
                treesitter = true,
                lsp_trouble = true,
                cmp = true,
                gitsigns = true,
                telescope = true,
                nvimtree = true,
                which_key = true,
                indent_blankline = { enabled = true },
                native_lsp = {
                    enabled = true,
                    virtual_text = {
                        errors = { "italic" },
                        hints = { "italic" },
                        warnings = { "italic" },
                        information = { "italic" },
                    },
                    underlines = {
                        errors = { "underline" },
                        hints = { "underline" },
                        warnings = { "underline" },
                        information = { "underline" },
                    },
                },
            },
        })

        vim.cmd.colorscheme("catppuccin")
    end,
}

