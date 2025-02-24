return {
    "catppuccin/nvim", -- Catppuccin theme
    name = "catppuccin",
    lazy = false, -- Load immediately
    priority = 1000, -- Ensure it loads before other plugins
    config = function()
        require("catppuccin").setup({
            flavour = "macchiato", -- Choose your favorite flavor: latte, frappe, macchiato, mocha
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

        -- Apply the colorscheme
        vim.cmd.colorscheme("catppuccin")
    end,
}

