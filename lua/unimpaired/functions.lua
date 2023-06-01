local M = {}

-- Dot repetition of a custom mapping breaks as soon as there is a dot repeatable normal
-- mode command inside the mapping. This function restores the dot repetition of
-- the mapping while preserving the [count] when called as last statement inside
-- the custom mapping
local restore_dot_repetition = function(count)
	count = count or ""
	local callback = vim.go.operatorfunc
	vim.go.operatorfunc = ""
	vim.cmd("silent! normal " .. count .. "g@l")
	vim.go.operatorfunc = callback
end

M.cprevious = function()
	vim.cmd("silent! " .. vim.v.count1 .. "cprevious")
	vim.cmd.normal("zv")
end

M.cnext = function()
	vim.cmd("silent! " .. vim.v.count1 .. "cnext")
	vim.cmd.normal("zv")
end

M.cfirst = function()
	vim.cmd("cfirst")
end

M.clast = function()
	vim.cmd("clast")
end

M.ptprevious = function()
	vim.cmd("silent! " .. vim.v.count1 .. "ptprevious")
end

M.ptnext = function()
	vim.cmd("silent! " .. vim.v.count1 .. "ptnext")
end

M.enable_hlsearch = function()
	vim.o.hlsearch = true
end

M.disable_hlsearch = function()
	vim.o.hlsearch = false
end

M.toggle_hlsearch = function()
	vim.o.hlsearch = not vim.o.hlsearch
end

M.enable_spell = function()
	vim.o.spell = true
end

M.disable_spell = function()
	vim.o.spell = false
end

M.toggle_spell = function()
	vim.o.spell = not vim.o.spell
end

M.enable_wrap = function()
	vim.o.wrap = true
end

M.disable_wrap = function()
	vim.o.wrap = false
end

M.toggle_wrap = function()
	vim.o.wrap = not vim.o.wrap
end

return M
