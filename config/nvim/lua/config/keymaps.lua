-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- ============================================
-- 1. INSERT & VISUAL MODE MOVEMENT
-- ============================================

-- Arrow-style navigation in insert mode
map("i", "<A-h>", "<Left>", { desc = "Move left" })
map("i", "<A-j>", "<Down>", { desc = "Move down" })
map("i", "<A-k>", "<Up>", { desc = "Move up" })
map("i", "<A-l>", "<Right>", { desc = "Move right" })

-- ============================================
-- 2. LINE NAVIGATION SHORTCUTS
-- ============================================

-- Home/End equivalents with modifiers
map("n", "<S-A-h>", "^", { desc = "Go to first non-blank" })
map("n", "<S-M-l>", "$", { desc = "Go to line end" })

map("v", "<S-A-h>", "^", { desc = "Select to first non-blank" })
map("v", "<S-A-l>", "$", { desc = "Select to line end" })

map("i", "<S-A-h>", "<Esc>^i", { desc = "Go to first non-blank" })
map("i", "<S-A-l>", "<Esc>$a", { desc = "Go to line end" })

-- ============================================
-- 3. COMMAND LINE SHORTCUTS
-- ============================================

-- Quick save and quit
map("c", "wq", "wq<CR>", { desc = "Write and quit" })

-- Quick shell command
map("n", "tc", ":!", { desc = "Execute shell command" })

-- ============================================
-- 4. SEARCH ENHANCEMENTS
-- ============================================

-- Center search results
map("n", "n", "nzz", { desc = "Next search result (centered)" })
map("n", "N", "Nzz", { desc = "Previous search result (centered)" })

-- Quick search clear
map("n", "<leader>0", ":nohlsearch<CR>", { desc = "Clear search highlights" })

-- ============================================
-- 5. QUICK EDITING
-- ============================================

-- Rapid line insertion
map("n", "oo", "o", { desc = "Insert line below" })
map("n", "oi", "O<Esc>", { desc = "Insert line above" })
map("n", "op", "o<Esc>", { desc = "Insert line below (normal mode)" })

-- Navigation to last modified line
map("n", "<leader>g", "u<C-r>", { desc = "Jump to last modified line" })
