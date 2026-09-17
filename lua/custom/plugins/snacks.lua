return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    -- Perf helpers: no config needed, just make big/quick files usable
    bigfile = { enabled = true },
    quickfile = { enabled = true },

    -- Nicer vim.notify() popups
    notifier = { enabled = true },

    -- Nicer vim.ui.input() prompt (used e.g. by LSP rename `grn`)
    input = { enabled = true },

    -- Replaces the manual CursorHold document-highlight autocmd in init.lua:
    -- highlights + lets you jump between LSP references with `]]` / `[[`
    words = { enabled = true },

    -- Start screen when opening nvim with no file args
    dashboard = { enabled = true },

    -- Explicitly off: not replacing signcolumn/statusline or adding smooth-scroll/indent-guides right now
    statuscolumn = { enabled = false },
    indent = { enabled = false },
    scroll = { enabled = false },
  },
  keys = {
    {
      ']]',
      function() require('snacks').words.jump(1, true) end,
      desc = 'Next Reference',
    },
    {
      '[[',
      function() require('snacks').words.jump(-1, true) end,
      desc = 'Prev Reference',
    },
    {
      '<leader>un',
      function() require('snacks').notifier.hide() end,
      desc = '[U]I: Dismiss [N]otifications',
    },
  },
}
