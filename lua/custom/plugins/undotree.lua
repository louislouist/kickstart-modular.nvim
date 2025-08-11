return {
  {
    'jiaoshijie/undotree',
    dependencies = 'nvim-lua/plenary.nvim',
    config = true,
    keys = { -- load the plugin only when using it's keybinding:
      { '<leader>u', desc = 'Open [U]ndotree', "<cmd>lua require('undotree').toggle()<cr>" },
    },
  },
}
