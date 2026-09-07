# if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

---@type LazySpec
return {
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    opts = {
      ensure_installed = {
        -- LSPs
        "clangd",                -- C / C++
        "python-lsp-server",     -- Python
        "gopls",                 -- Go
        "bash-language-server",  -- Shellscript
        "asm-lsp",               -- Assembly
        "html-lsp",              -- HTML
        "phpactor",              -- PHP
        "css-lsp",               -- CSS
        "vtsls",                 -- JavaScript / TypeScript

        "tailwindcss-language-server",  -- tailwindcss

        -- Formatters
        "stylua",                -- Lua
        "prettier",              -- JS / CSS / HTML formatting
        "shfmt",                 -- Shell Script

        -- Debuggers
        "debugpy",               -- Python

        -- Tools
        "tree-sitter-cli",       -- for Treesitter
      },
    },
  },
}


