vim.bo.shiftwidth = 4
vim.bo.tabstop = 4
vim.bo.softtabstop = 4
vim.bo.expandtab = false

vim.api.nvim_create_autocmd('BufEnter', {
  pattern = '*.gd',
  callback = function()
    vim.lsp.start_client { name = 'gdscript_config' }
  end,
})

-- This pings the server with a dummy request every 2 mins
vim.fn.timer_start(120000, function()
  local clients = vim.lsp.get_active_clients()
  for _, client in ipairs(clients) do
    if client.name == 'gdscript' then
      client.request('textDocument/documentSymbol', {
        textDocument = { uri = vim.uri_from_bufnr(0) },
      }, function() end, 0)
    end
  end
end, { ['repeat'] = -1 })
