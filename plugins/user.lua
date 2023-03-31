return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "decaycs/decay.nvim",
    as = "decay",
    config = function()
      require("decay").setup {
        style = "default",
        nvim_tree = {
          contrast = true, -- or false to disable tree contrast,
        },
      }
      require("decay").setup {
        style = "dark",
        nvim_tree = {
          contrast = true, -- or false to disable tree contrast,
        },
      }
      require("decay").setup {
        style = "cosmic",
        nvim_tree = {
          contrast = true, -- or false to disable tree contrast,
        },
      }
      require("decay").setup {
        style = "decayce",
        nvim_tree = {
          contrast = true, -- or false to disable tree contrast,
        },
      }
    end,
  },
  {
    "phaazon/hop.nvim",
    lazy = false,
    branch = "v2", -- optional but strongly recommended
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      require("hop").setup {
        keys = "etovxqpdygfblzhckisuran",
        quit_key = "<SPC>",
        jump_on_sole_occurence = false,
        case_sensitive = false,
        multi_window = false,
      }
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    lazy = false,
    config = function()
      require("treesitter-context").setup {
        enable = true,
        max_lines = 0,
        min_window_height = 0,
      }
    end,
  },
}
