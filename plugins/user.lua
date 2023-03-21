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
    'decaycs/decay.nvim',
    as = 'decay',
    config = function()
      require('decay').setup({
        style = 'normal',
        nvim_tree = {
          contrast = true -- or false to disable tree contrast,
        },
      })
      require('decay').setup({
        style = 'dark',
        nvim_tree = {
          contrast = true -- or false to disable tree contrast,
        },
      })
      require('decay').setup({
        style = 'light',
        nvim_tree = {
          contrast = true -- or false to disable tree contrast,
        },
      })
      require('decay').setup({
        style = 'decayce',
        nvim_tree = {
          contrast = true -- or false to disable tree contrast,
        },
      })
    end,
  },
  {
    'jakewvincent/texmagic.nvim',
    config = function()
      require('texmagic').setup({
        -- Config goes here; leave blank for defaults
      })
    end
  }
}
