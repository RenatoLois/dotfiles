return {
  "saghen/blink.cmp",
  dependencies = { "rafamadriz/friendly-snippets" },
  version = "1.*",

  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    keymap = {
      preset = "default",

      ["<Up>"] = { "fallback" },
      ["<Down>"] = { "fallback" },

      ["<Tab>"] = { "snippet_forward", "fallback" },
      ["<S-Tab>"] = { "snippet_backward", "fallback" },

      ["<C-n>"] = { "select_next", "fallback_to_mappings" },
      ["<C-p>"] = { "select_prev", "fallback_to_mappings" },

      ["<CR>"] = { "accept", "fallback" },

      --['<C-A-j>'] = { 'select_next', 'fallback' },
      --['<C-A-k>'] = { 'select_prev', 'fallback' },
    },

    appearance = {
      nerd_font_variant = "mono",
    },

    completion = {
      ghost_text = { enabled = false },

      documentation = { auto_show = false },

      menu = {
        auto_show = true,
        draw = {
          columns = {
            { "label", "label_description", gap = 1 },
            { "kind_icon", "kind" },
          },

          components = {
            label = {
              highlight = function(ctx)
                return { { group = "Pmenu" } }
              end,
            },
            label_description = {
              highlight = function(ctx)
                return { { group = "PmenuExtra" } }
              end,
            },
            kind = {
              highlight = function(ctx)
                return { { group = "PmenuKind" } }
              end,
            },
            kind_icon = {
              highlight = function(ctx)
                return { { group = ctx.kind_hl } }
              end,
            },
          },
        },
      },

      accept = {
        auto_brackets = { enabled = true },
      },

      list = {
        selection = {
          preselect = true,
          auto_insert = false,
        },
      },
    },

    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
    },

    snippets = {
      preset = "default",
    },

    fuzzy = { implementation = "prefer_rust_with_warning" },

    signature = { enabled = true },
  },
}
