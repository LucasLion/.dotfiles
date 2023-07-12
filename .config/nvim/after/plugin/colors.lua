--function ColorMyPencils(color)
--	color = color or "rose-pine"
--	vim.cmd.colorscheme(color)
--
--	vim.api.nvim_set_hl(0, "Normal", { bg = "none"})
--	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"})
--    local win = vim.api.nvim_get_current_win()
--    vim.api.nvim_win_set_option(win, 'winblend', 100)
--end

function ColorMyPencils(color)
	color = color or "gruvbox"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none"})
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"})
    local win = vim.api.nvim_get_current_win()
    vim.api.nvim_win_set_option(win, 'winblend', 100)
end
ColorMyPencils()
