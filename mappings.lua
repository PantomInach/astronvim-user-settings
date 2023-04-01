local ui = require "astronvim.utils.ui"
local mark = require "harpoon.ui"
local harpui = require "harpoon.ui"
-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    --
    -- Set buffer switching left and right to the same as astronvim version <3.X.X
    ["<S-h>"] = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },
    ["<S-l>"] = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    ["<leader>m"] = { desc = "LaTex" },
    ["<leader>mt"] = { "<cmd>TexlabBuild<cr>", desc = "LaTeX" },
    ["<leader>mf"] = { "<cmd>TexlabForward<cr>", desc = "Forward Search" },
    ["<leader>G"] = { "<cmd>Glow<cr>", desc = "Markdown Glow" },
    -- phaazon/hop.nvim bindings
    ["<leader>fl"] = { ":HopLineStart<cr>", desc = "Hop Line Start" },
    ["<C-f>"] = { ":HopWord<cr>", desc = "Hop Word" },
    ["<leader>C"] = {
      function() require("astronvim.utils.buffer").close_all(true) end,
      desc = "Close all buffers except current",
    },
    -- mbbill/undotree bindings
    ["<leader>U"] = { ":UndotreeToggle<CR>", desc = "Toggle Undotree" },
    -- ThePrimeagen/harpoon bindings
    ["<leader>h"] = { desc = "⇁ Harpoon" },
    ["<leader>ha"] = { function() require("harpoon.mark").add_file() end, desc = "Add file" },
    ["<leader>hc"] = { function() require("harpoon.mark").clear_all() end, desc = "Removes all files" },
    ["<leader>ho"] = { function() harpui.toggle_quick_menu() end, desc = "Open quick menu" },
    ["<leader>hh"] = { function() mark.nav_prev() end, desc = "Open previous file" },
    ["<leader>hl"] = { function() mark.nav_next() end, desc = "Open next file" },
    ["<leader>1"] = { function() harpui.nav_file(1) end, desc = "Harpoon file 1" },
    ["<leader>2"] = { function() harpui.nav_file(2) end, desc = "Harpoon file 2" },
    ["<leader>3"] = { function() harpui.nav_file(3) end, desc = "Harpoon file 3" },
    ["<leader>4"] = { function() harpui.nav_file(4) end, desc = "Harpoon file 4" },
    ["<leader>5"] = { function() harpui.nav_file(5) end, desc = "Harpoon file 5" },
    ["<leader>6"] = { function() harpui.nav_file(6) end, desc = "Harpoon file 6" },
    ["<leader>7"] = { function() harpui.nav_file(7) end, desc = "Harpoon file 7" },
    ["<leader>8"] = { function() harpui.nav_file(8) end, desc = "Harpoon file 8" },
    ["<leader>9"] = { function() harpui.nav_file(9) end, desc = "Harpoon file 9" },
    ["<leader>0"] = { function() harpui.nav_file(10) end, desc = "Harpoon file 10" },
    -- tpope/fugitive bindings
    ["<leader>gg"] = { "<cmd>Git<cr>", desc = "Fugitive client" },
    -- Remove keybindings
    ["<leader>n"] = false,
    ["<leader>o"] = false,
    -- Remove Find bindings
    ["<leader>fa"] = false,
    ["<leader>fb"] = false,
    ["<leader>fC"] = false,
    -- ["<leader>fF"] = false,
    ["<leader>fh"] = false,
    ["<leader>fk"] = false,
    ["<leader>fm"] = false,
    ["<leader>fn"] = false,
    ["<leader>fo"] = false,
    ["<leader>fr"] = false,
    ["<leader>ft"] = false,
    -- ["<leader>fW"] = false,
    ["<leader>f'"] = false,
    -- Remove Buffer bindings
    ["<leader>b"] = false,
    ["<leader>b|"] = false,
    ["<leader>b\\"] = false,
    ["<leader>bb"] = false,
    ["<leader>bC"] = false,
    ["<leader>bn"] = false,
    ["<leader>bD"] = false,
    ["<leader>bd"] = false,
    ["<leader>bc"] = false,
    -- Remove toggleterm bindings
    ["<leader>t"] = false,
    ["<leader>tf"] = false,
    ["<leader>th"] = false,
    ["<leader>tp"] = false,
    ["<leader>tv"] = false,
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
