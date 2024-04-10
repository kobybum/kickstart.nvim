-- Collection of various small independent plugins/modules
return {
  'ThePrimeagen/harpoon',
  dependencies = {
    'nvim-telescope/telescope.nvim',
  },
  keys = {
    '<leader>h',
    desc = 'harpoon',
  },
  opts = {
    ensure_installed = { 'telescope' },
  },
}
