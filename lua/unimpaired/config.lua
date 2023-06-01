local M = {}

local defaults = {
    default_keymaps = true,
    keymaps = {
        cprevious = {
            mapping = '[q',
            description = 'Jump to [count] previous entry in qflist',
            dot_repeat = true,
        },
        cnext = {
            mapping = ']q',
            description = 'Jump to [count] next entry in qflist',
            dot_repeat = true,
        },
        cfirst = {
            mapping = '[Q',
            description = 'Jump to first entry in qflist',
            dot_repeat = false,
        },
        clast = {
            mapping = ']Q',
            description = 'Jump to last entry in qflist',
            dot_repeat = false,
        },
        ptprevious = {
            mapping = '[<C-t>',
            description = ':tprevious in the preview window',
            dot_repeat = true,
        },
        enable_hlsearch = {
            mapping = '[oh',
            description = 'Enable hlsearch',
            dot_repeat = false,
        },
        disable_hlsearch = {
            mapping = ']oh',
            description = 'Disable hlsearch',
            dot_repeat = false,
        },
        toggle_hlsearch = {
            mapping = 'yoh',
            description = 'Toggle hlsearch',
            dot_repeat = true,
        },
        enable_spell = {
            mapping = '[os',
            description = 'Enable spell check',
            dot_repeat = false,
        },
        disable_spell = {
            mapping = ']os',
            description = 'Disable spell check',
            dot_repeat = false,
        },
        toggle_spell = {
            mapping = 'yos',
            description = 'Toggle spell check',
            dot_repeat = true,
        },
        enable_wrap = {
            mapping = '[ow',
            description = 'Enable line wrapping',
            dot_repeat = false,
        },
        disable_wrap = {
            mapping = ']ow',
            description = 'Disable line wrapping',
            dot_repeat = false,
        },
        toggle_wrap = {
            mapping = 'yow',
            description = 'Toggle line wrapping',
            dot_repeat = true,
        },
    }
}

M.init = function(user_conf)
    user_conf = user_conf or {}
    if user_conf.default_keymaps == false then
        defaults = {}
    end
    M.options = vim.tbl_deep_extend('force', defaults, user_conf)
end

return M
