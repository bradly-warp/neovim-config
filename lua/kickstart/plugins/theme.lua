return {
  {
    'AlexvZyl/nordic.nvim',
    name = 'nordic',
    priority = 1000,
    config = function()
      require('nordic').setup {
        transparent_bg = true,
      }
      require('nordic').load()
    end,
  },
}
