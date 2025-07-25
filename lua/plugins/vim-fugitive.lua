return {
  'tpope/vim-fugitive',
  event = 'VimEnter',
  keys = {
    { '<leader>gs', '<cmd>G<CR>', desc = 'git [s]tatus' },
    { '<leader>gw', '<cmd>Gwrite<CR>', desc = 'Stage file' },
    { '<leader>gc', '<cmd>G commit<CR>', desc = 'git [c]ommit' },
    { '<leader>gd', '<cmd>Gdiffsplit<CR>', desc = 'git [d]iff' },
    { '<leader>gb', '<cmd>G blame<CR>', desc = 'git [b]lame' },
    { '<leader>gl', '<cmd>G lg<CR>', desc = 'git [l]og' },
    { '<leader>gp', '<cmd>G push<CR>', desc = 'git [p]ush' },
    { '<leader>gP', '<cmd>G pull<CR>', desc = 'git [P]ull' },
    { '<leader>gf', '<cmd>G fetch<CR>', desc = 'git [f]etch' },
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
