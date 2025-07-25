return {
  'tpope/vim-fugitive',
  event = 'VimEnter',
  keys = {
    { '<leader>gs', '<cmd>G<CR>', desc = '[g]it [s]tatus' },
    { '<leader>gw', '<cmd>Gwrite<CR>', desc = 'Stage file' },
    { '<leader>gc', '<cmd>G commit<CR>', desc = '[g]it [c]ommit' },
    { '<leader>gd', '<cmd>Gdiffsplit<CR>', desc = '[g]it [d]iff' },
    { '<leader>gb', '<cmd>G blame<CR>', desc = '[g]it [b]lame' },
    { '<leader>gl', '<cmd>G lg<CR>', desc = '[g]it [l]og' },
    { '<leader>gp', '<cmd>G push<CR>', desc = '[g]it [p]ush' },
    { '<leader>gP', '<cmd>G pull<CR>', desc = '[g]it [P]ull' },
    { '<leader>gf', '<cmd>G fetch<CR>', desc = '[g]it [f]etch' },
  },
  config = function()
    vim.api.nvim_create_autocmd('FileType', {
      pattern = { 'fugitive*', 'git' },
      callback = function()
        vim.keymap.set('n', 'q', '<cmd>q<CR>', { buffer = true, desc = '[q]uit fugitive map' })
      end,
    })
  end,
}
