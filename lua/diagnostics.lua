local signs = {
    Error = "X",
    Warn = "!",
    Hint = "",
    Info = "i"
}

for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

vim.diagnostic.config({
    underline = false,
    virtual_text = {
        prefix = "<",
    },
    update_in_insert = true,
    float = {
        source = "always",
    },
})

vim.api.nvim_set_keymap("n", "<leader>d", "<cmd>lua vim.diagnostic.open_float({ scope = line })<CR>", { noremap = true })
