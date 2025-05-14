local M = {}

local term_bufnr = nil
local term_winid = nil

local function is_open()
  return term_winid and vim.api.nvim_win_is_valid(term_winid) or false
end

function M.toggle()
  if is_open() then
    vim.api.nvim_win_close(term_winid, true)
    term_winid = nil
    return
  end

  local first_time = false
  if not term_bufnr or not vim.api.nvim_buf_is_valid(term_bufnr) then
    term_bufnr = vim.api.nvim_create_buf(false, true)
    vim.bo[term_bufnr].bufhidden = 'hide'
    first_time = true
  end

  local width = math.floor(vim.o.columns * 0.8)
  local height = math.floor(vim.o.lines * 0.8)
  local row = math.floor((vim.o.lines - height) / 2)
  local col = math.floor((vim.o.columns - width) / 2)

  term_winid = vim.api.nvim_open_win(term_bufnr, true, {
    relative = 'editor',
    row = row,
    col = col,
    width = width,
    height = height,
    style = 'minimal',
    border = 'rounded',
  })

  if first_time then
    vim.fn.termopen('lazygit', { buffer = term_bufnr })

    -- Map <Esc> inside terminal mode to exit terminal mode and close window
    vim.api.nvim_buf_set_keymap(term_bufnr, 't', '<Esc>', [[<C-\><C-n>:lua require("scripts.lazygit").toggle()<CR>]], { noremap = true, silent = true })
  end

  -- Start in insert (terminal) mode
  vim.api.nvim_feedkeys('i', 'n', false)
end

return M
