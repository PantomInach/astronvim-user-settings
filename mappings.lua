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
    ["<leader>u"] = { ":UndotreeToggle<CR>", desc = "Toggle Undotree" },
    -- ThePrimeagen/harpoon bindings
    ["<leader>h"] = { desc = "⇁ Harpoon" },
    ["<leader>ha"] = { function() require("harpoon.mark").add_file() end, desc = "Add file" },
    ["<leader>ho"] = { function() harpui.toggle_quick_menu() end, desc = "Open quick menu" },
    ["<leader>hh"] = { function() mark.nav_prev() end, desc = "Open previous file." },
    ["<leader>hl"] = { function() mark.nav_next() end, desc = "Open next file." },
    ["<C-h>"] = { function() harpui.nav_file(1) end, desc = "Harpoon file 1" },
    ["<C-j>"] = { function() harpui.nav_file(2) end, desc = "Harpoon file 2" },
    ["<C-k>"] = { function() harpui.nav_file(3) end, desc = "Harpoon file 3" },
    ["<C-l>"] = { function() harpui.nav_file(4) end, desc = "Harpoon file 4" },
    -- tpope/fugitive bindings
    ["<leader>gg"] = { "<cmd>Git<cr>", desc = "Fugitive client" },
    -- Rebind UI keybindings to start with U
    ["<leader>U"] = { desc = " UI" },
    ["<leader>Ua"] = { ui.toggle_autopairs, desc = "Toggle autopairs" },
    ["<leader>Ub"] = { ui.toggle_background, desc = "Toggle background" },
    ["<leader>Uc"] = { ui.toggle_cmp, desc = "Toggle autocompletion" },
    ["<leader>UC"] = { "<cmd>ColorizerToggle<cr>", desc = "Toggle color highlight" },
    ["<leader>Ud"] = { ui.toggle_diagnostics, desc = "Toggle diagnostics" },
    ["<leader>Ug"] = { ui.toggle_signcolumn, desc = "Toggle signcolumn" },
    ["<leader>Ui"] = { ui.set_indent, desc = "Change indent setting" },
    ["<leader>Ul"] = { ui.toggle_statusline, desc = "Toggle statusline" },
    ["<leader>UL"] = { ui.toggle_codelens, desc = "Toggle CodeLens refresh" },
    ["<leader>Un"] = { ui.change_number, desc = "Change line numbering" },
    ["<leader>UN"] = { ui.toggle_ui_notifications, desc = "Toggle UI notifications" },
    ["<leader>Up"] = { ui.toggle_paste, desc = "Toggle paste mode" },
    ["<leader>Us"] = { ui.toggle_spell, desc = "Toggle spellcheck" },
    ["<leader>US"] = { ui.toggle_conceal, desc = "Toggle conceal" },
    ["<leader>Ut"] = { ui.toggle_tabline, desc = "Toggle tabline" },
    ["<leader>Uu"] = { ui.toggle_url_match, desc = "Toggle URL highlight" },
    ["<leader>Uw"] = { ui.toggle_wrap, desc = "Toggle wrap" },
    ["<leader>Uy"] = { ui.toggle_syntax, desc = "Toggle syntax highlight" },
    -- ["<leader>u"] = false,
    ["<leader>ua"] = false,
    ["<leader>ub"] = false,
    ["<leader>uc"] = false,
    ["<leader>uC"] = false,
    ["<leader>ud"] = false,
    ["<leader>ug"] = false,
    ["<leader>ui"] = false,
    ["<leader>ul"] = false,
    ["<leader>uL"] = false,
    ["<leader>un"] = false,
    ["<leader>uN"] = false,
    ["<leader>up"] = false,
    ["<leader>us"] = false,
    ["<leader>uS"] = false,
    ["<leader>ut"] = false,
    ["<leader>uu"] = false,
    ["<leader>uw"] = false,
    ["<leader>uy"] = false,
    -- Add below the keybindings to be remove/disabled
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
