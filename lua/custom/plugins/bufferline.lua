return {
  'akinsho/bufferline.nvim',
  version = '*',
  event = 'VimEnter',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  keys = {
    { '<S-l>', '<cmd>BufferLineCycleNext<CR>', desc = 'Next buffer' },
    { '<S-h>', '<cmd>BufferLineCyclePrev<CR>', desc = 'Prev buffer' },
    { '<leader>bp', '<cmd>BufferLineTogglePin<CR>', desc = '[B]uffer [P]in' },
    { '<leader>bd', '<cmd>bdelete<CR>', desc = '[B]uffer [D]elete' },
    { '<leader>bo', '<cmd>BufferLineCloseOthers<CR>', desc = '[B]uffer close [O]thers' },
  },
  ---@module 'bufferline'
  ---@type bufferline.UserConfig
  opts = {
    options = {
      mode = 'buffers',
      diagnostics = 'nvim_lsp',
      always_show_bufferline = true,
      show_buffer_close_icons = true,
      show_close_icon = false,
      -- Keep the tabline from overlapping the neo-tree sidebar
      offsets = {
        {
          filetype = 'neo-tree',
          text = 'File Explorer',
          highlight = 'Directory',
          separator = true,
        },
      },
    },
  },
}
