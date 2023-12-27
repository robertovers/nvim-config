local lsp = require("lspconfig")
local protocol = require("vim.lsp.protocol")

local on_attach = function(client, bufnr)
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

lsp.lua_ls.setup {
    capabilities = capabilities,
    on_attach = function(client, bufnr)
        on_attach(client, bufnr)
    end,

    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim", "nvim" },
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
                checkThirdParty = false
            },
        },
    },
}

lsp.tsserver.setup {
    on_attach = on_attach,
    filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
    cmd = { "typescript-language-server", "--stdio" },
    capabilities = capabilities
}

lsp.rust_analyzer.setup {
    on_attach = on_attach,
    capabilities = capabilities
}

lsp.pylsp.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    settings = {
      pylsp = {
        plugins = {
          -- linter options
          flake8 = { enabled = true, maxLineLength = 120 },
          pylint = { enabled = false },
          pyflakes = { enabled = false },
          pycodestyle = { enabled = false },
          -- type checker
          pylsp_mypy = { enabled = true },
          -- auto-completion options
          jedi_completion = { fuzzy = true },
          -- import sorting
          pyls_isort = { enabled = true },
        }
      }
    }
}

vim.api.nvim_set_keymap("n", "<leader>a", "<cmd>lua vim.lsp.buf.hover()<CR>", { noremap = true })
