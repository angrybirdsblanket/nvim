return {
	'nvim-treesitter/nvim-treesitter', 
	build = ":TSUpdate",
	config = function()
		require'nvim-treesitter.configs'.setup {
			-- A list of parser names, or "all" (the listed parsers MUST always be installed)
			ensure_installed = { "c", "cpp", "lua", "python", "c_sharp", "html", "css", "javascript" },

			-- Install parsers synchronously (only applied to `ensure_installed`)
			sync_install = false,

			-- Automatically install missing parsers when entering buffer
			-- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
			auto_install = true,

			highlight = {
				enable = true,
			},
			additional_vim_regex_highlighting = false,
		}

		-- Enable Tree-sitter-based folding
		vim.opt.foldmethod = "expr"
		vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

		-- Set initial fold level and enable folding
		vim.opt.foldlevel = 99  -- Keeps everything open initially
		vim.opt.foldenable = true
	end,
}

