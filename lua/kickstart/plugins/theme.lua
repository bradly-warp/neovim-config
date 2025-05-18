return {
  {
    'kepano/flexoki-neovim',
    name = 'flexoki',
    priority = 1000,
    config = function()
      vim.cmd.colorscheme 'flexoki-dark'
      vim.cmd [[
        " Transparent background
        hi Normal guibg=NONE ctermbg=NONE
        hi NormalNC guibg=NONE ctermbg=NONE
        hi EndOfBuffer guifg=bg guibg=NONE
        hi FloatBorder guibg=NONE ctermbg=NONE
        hi NormalFloat guibg=NONE ctermbg=NONE
        hi MsgArea guibg=NONE ctermbg=NONE
        hi MsgSeparator guibg=NONE ctermbg=NONE
        hi StatusLine guibg=NONE ctermbg=NONE

        " Keep contrast where needed
        hi Pmenu guibg=NONE ctermbg=NONE
        hi PmenuSel guibg=#3a3b4c ctermbg=NONE
        hi PmenuSbar guibg=#3a3b4c ctermbg=NONE
        hi PmenuThumb guibg=#5a5b6c ctermbg=NONE
      ]]
    end,
  },
}
