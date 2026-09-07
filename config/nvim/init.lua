-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

local theme = "onedark"
vim.cmd("colorscheme " .. theme);

-- remove kitty padding
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    vim.fn.system({
      "kitty",
      "@",
      "set-spacing",
      "padding-left=0",
      "padding-top=0",
      "padding-bottom=0",
      "padding-right=0",
    })
  end,
})
vim.api.nvim_create_autocmd("VimLeave", {
  callback = function()
    vim.fn.system({
      "kitty",
      "@",
      "set-spacing",
      "padding-left=10",
      "padding-top=10",
      "padding-bottom=10",
      "padding-right=10",
    })
  end,
})

-- syncs terminal color with Neovim if bg != none, padding stays
vim.api.nvim_create_autocmd({ "UIEnter", "ColorScheme" }, {
  callback = function()
    local normal = vim.api.nvim_get_hl(0, { name = "Normal" })
    if not normal.bg then
      return
    end
    io.write(string.format("\027]11;#%06x\027\\", normal.bg))
  end,
})

vim.api.nvim_create_autocmd("UILeave", {
  callback = function()
    io.write("\027]111\027\\")
  end,
})


-- for error in tailwind css 
local lspconfig = require("lspconfig")

lspconfig.cssls.setup({
  settings = {
    css = {
      validate = true,
      lint = {
        unknownAtRules = "ignore",
      },
    },
    scss = {
      validate = true,
      lint = {
        unknownAtRules = "ignore",
      },
    },
    less = {
      validate = true,
      lint = {
        unknownAtRules = "ignore",
      },
    },
  },
})
