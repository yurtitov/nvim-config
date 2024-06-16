function SetTheme(theme)
	theme = theme or "gruvbox"
	vim.cmd.colorscheme(theme)
end

SetTheme()
