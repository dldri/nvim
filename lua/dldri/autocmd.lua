-- See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Run Ultracite formatting on save for specific filetypes
vim.api.nvim_create_autocmd('BufWritePost', {
  pattern = { '*.js', '*.jsx', '*.ts', '*.tsx', '*.json' },
  desc = 'Run Ultracite formatting on save',
  callback = function()
    vim.cmd 'silent !npx ultracite format %'
  end,
})
