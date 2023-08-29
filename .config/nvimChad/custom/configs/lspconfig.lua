local config = require("plugins.configs.lspconfig")

local on_attach = config.on_attach
local capabilities = config.capabilities

-- local lspconfig = require("lspconfig")

local servers = { "rust_analyzer", "pyright", "tsserver", "gopls", "solargraph", "html", "cssls", "emmet_ls" }

for _, lsp in pairs(servers) do
  require("lspconfig")[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
    single_file_support = true,
  }
end

