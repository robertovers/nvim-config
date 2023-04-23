local kanagawa = require("kanagawa")

kanagawa.setup({
    compile = false,
    undercurl = true,
    commentStyle = { italic = true },
    functionStyle = {},
    keywordStyle = { italic = true},
    statementStyle = { bold = true },
    typeStyle = {},
    transparent = true,
    dimInactive = false,
    terminalColors = true,
    colors = {
        palette = {},
        theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
    },
    overrides = function(colors)
        return {}
    end,
    theme = "wave",
    background = {
        dark = "wave",
        light = "lotus"
    },
})

vim.cmd("colorscheme kanagawa")

vim.cmd([[
    highlight SignColumn guibg=NONE ctermbg=NONE
    highlight LineNr guibg=NONE ctermbg=NONE
    highlight GitSignsAdd guibg=NONE ctermbg=NONE
    highlight GitSignsChange guibg=NONE ctermbg=NONE
    highlight GitSignsDelete guibg=NONE ctermbg=NONE
    highlight DiagnosticSignInfo guibg=NONE ctermbg=NONE
    highlight DiagnosticSignHint guibg=NONE ctermbg=NONE
    highlight DiagnosticSignWarn guibg=NONE ctermbg=NONE
    highlight DiagnosticSignError guibg=NONE ctermbg=NONE
]])
