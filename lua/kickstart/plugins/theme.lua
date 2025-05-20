return {
  {
    'AlexvZyl/nordic.nvim',
    name = 'nordic',
    priority = 1000,
    config = function()
      require('nordic').setup {
        transparent = {
          bg = true,
          float = false,
        },
      }
      require('nordic').load()
    end,
  },
}
