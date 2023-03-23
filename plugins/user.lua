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
  -- {
  --   'jakewvincent/texmagic.nvim',
  --   config = function()
  --     require('texmagic').setup({
  --       -- Config goes here; leave blank for defaults
  --       engines = {
  --         pdflatex = {
  --           executable = "latexmk",
  --           args = {
  --             "-pdflatex",
  --             "-interaction=nonstopmode",
  --             "-synctex=1",
  --             "-outdir=.build",
  --             "-pv",
  --             "%f"
  --           },
  --           iscontinuous = true
  --         },
  --       }
  --     })
  --   end
  -- },
  -- {
  --   'lervag/vimtex',
  --   config = function()
  --   end
  -- }
}
