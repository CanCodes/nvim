local cmp = require('cmp')
local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.buffer_autoformat()
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  -- Replace the language servers listed here 
  -- with the ones you want to install
  ensure_installed = {
      "tsserver",
      "rust_analyzer",
      "gopls",
      "eslint",
      "lua_ls",
      "pyright",
      "templ",
      "clangd",
      "cmake",
--      "java_language_server",
      "jsonls",
      "dockerls",
  },
  handlers = {
      lsp_zero.default_setup,
  },
})

cmp.setup({
    mapping = cmp.mapping.preset.insert({
        ['<CR>'] = cmp.mapping.confirm({select = false}),

    }),

})
