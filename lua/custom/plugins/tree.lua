local map = vim.keymap.set

-- File navigation
return {
  'nvim-tree/nvim-tree.lua',
  opts = {
    sort = {
      sorter = 'case_sensitive',
    },
    git = {
      enable = false,
    },
    view = {
      width = 30,
    },
    renderer = {
      group_empty = true,
    },
    filters = {
      dotfiles = true,
    },
  },
  keys = {
    { '<C-n>', vim.cmd.NvimTreeToggle, desc = 'Toggle tree' },
    { '<leader>e', vim.cmd.NvimTreeFocus, desc = 'Focus tree' },
  },
}
