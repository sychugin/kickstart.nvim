return {
  'folke/trouble.nvim',
  cmd = 'Trouble',
  ---@type trouble.Config
  opts = {},
  keys = {
    { '<leader>xx', '<cmd>Trouble diagnostics toggle<CR>', desc = 'Diagnostics (Trouble)' },
    { '<leader>xX', '<cmd>Trouble diagnostics toggle filter.buf=0<CR>', desc = 'Buffer Diagnostics (Trouble)' },
    { '<leader>cs', '<cmd>Trouble symbols toggle focus=false<CR>', desc = '[C]ode [S]ymbols (Trouble)' },
    { '<leader>cl', '<cmd>Trouble lsp toggle focus=false win.position=right<CR>', desc = '[C]ode [L]SP Locations (Trouble)' },
    { '<leader>xL', '<cmd>Trouble loclist toggle<CR>', desc = 'Location List (Trouble)' },
    { '<leader>xQ', '<cmd>Trouble qflist toggle<CR>', desc = 'Quickfix List (Trouble)' },
  },
}
