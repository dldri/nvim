return {
  'mbbill/undotree',
  config = function()
    local is_wsl = vim.fn.has 'wsl' == 1

    if is_wsl then
      vim.g.undotree_DiffCommand = 'diff'
    else
      vim.g.undotree_DiffCommand = 'FC'
    end

    vim.g.undotree_WindowLayout = 4
    vim.g.undotree_SetFocusWhenToggle = 1
    vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle, { desc = 'Toggle [U]ndotree' })
  end,
}
