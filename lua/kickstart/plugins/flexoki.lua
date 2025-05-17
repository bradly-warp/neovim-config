return {
  {
    'kepano/flexoki-neovim',
    name = 'flexoki',
    priority = 1000,
    config = function()
      vim.cmd.colorscheme 'flexoki-dark'
      vim.cmd [[
        hi Normal guibg=#202020 ctermbg=NONE
        hi NormalNC guibg=#202020 ctermbg=NONE
        hi EndOfBuffer guifg=bg guibg=#202020
        hi Pmenu guibg=#202020 ctermbg=NONE
        hi PmenuSel guibg=#202020 ctermbg=NONE
        hi PmenuSbar guibg=#202020 ctermbg=NONE
        hi PmenuThumb guibg=#202020 ctermbg=NONE
        hi FloatBorder guibg=#202020 ctermbg=NONE
        hi NormalFloat guibg=#202020 ctermbg=NONE
        hi MsgArea guibg=#202020 ctermbg=NONE
        hi MsgSeparator guibg=#202020 ctermbg=NONE
        hi StatusLine guibg=#202020 ctermbg=NONE
      ]]
    end,
  },
}

-- vim: ts=2 sts=2 sw=2 et
