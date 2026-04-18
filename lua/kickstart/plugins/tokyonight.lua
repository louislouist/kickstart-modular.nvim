---@module 'lazy'
---@type LazySpec
return {
  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    'folke/tokyonight.nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function()
      ---@diagnostic disable-next-line: missing-fields
      require('tokyonight').setup {
        styles = {
          comments = { italic = false }, -- Disable italics in comments
        },
      }

      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles, and you could load
      -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
      vim.cmd.colorscheme 'tokyonight-night'

      -- You can configure highlights by doing something like:
      vim.cmd.hi 'Comment gui=none'

      -- brighten up comments for readability.
      vim.api.nvim_set_hl(0, 'Comment', { fg = '#7f8dbb' })
      -- vim.api.nvim_set_hl(0, 'Comment', { fg = '#8f9ac8' })
      -- vim.api.nvim_set_hl(0, 'Comment', { fg = '#a9b1d6' })
      -- vim.api.nvim_set_hl(0, 'Comment', { fg = '#c0caf5' }) -- very bright

      --set highlight group
      --background hugh removed

      -- Active window (current)
      vim.api.nvim_set_hl(0, 'Normal', { bg = '#0a0a0a' }) -- darker

      -- Inactive windows
      vim.api.nvim_set_hl(0, 'NormalNC', { bg = '#1a1b26' }) -- slightly gray

      -- Floating windows (optional consistency)
      vim.api.nvim_set_hl(0, 'NormalFloat', { bg = '#0a0a0a' })

      -- Optional: make split borders clearer
      vim.api.nvim_set_hl(0, 'WinSeparator', { fg = '#3b4261' })
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
