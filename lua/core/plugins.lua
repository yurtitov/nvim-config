local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{ 'phaazon/hop.nvim' },
	{ 'nvim-neo-tree/neo-tree.nvim',
        branch = "v3.x",
    	dependencies = {
      		"nvim-lua/plenary.nvim",
      		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      		"MunifTanjim/nui.nvim",
      		-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
	    }
	},
	{ 'nvim-treesitter/nvim-treesitter' },
	{ 'neovim/nvim-lspconfig' },
	{ 'hrsh7th/nvim-cmp' },
	{ 'hrsh7th/cmp-nvim-lsp' },
	{ 'saadparwaiz1/cmp_luasnip' },
	{ 'L3MON4D3/LuaSnip' },
	{ 'morhetz/gruvbox' }, -- Color scheme
})
