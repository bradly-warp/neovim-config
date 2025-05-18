return {
  {
    'ellisonleao/gruvbox.nvim',
    name = 'gruvbox',
    priority = 1000,
    config = function()
      require('gruvbox').setup {
        transparent_mode = false,
      }
      vim.o.background = 'dark'
      vim.cmd.colorscheme 'gruvbox'
    end,
  },
}

-- vim: ts=2 sts=2 sw=2 et
