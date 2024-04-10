-- Editor tabs

return {
  'romgrk/barbar.nvim',
  dependencies = {
    'lewis6991/gitsigns.nvim',
    'nvim-tree/nvim-web-devicons',
  },
  keys = {
    { '<S-Tab>', vim.cmd.BufferPrevious, desc = 'Previous tab' },
    { '<Tab>', vim.cmd.BufferNext, desc = 'Next tab' },

    -- Close buffer
    { '<leader>w', vim.cmd.BufferClose, desc = 'Close buffer' },

    -- Magic buffer-picking mode
    { 'C-p>', vim.cmd.BufferPick, desc = 'Magic buffer pick' },

    { '<leader>q', vim.cmd.BufferCloseAllButVisible, desc = 'Close all but visibile' },
  },
  opts = {
    sidebar_filetypes = {
      -- Use the default values: {event = 'BufWinLeave', text = '', align = 'left'}
      NvimTree = true,
      -- Or, specify the text used for the offset:
      undotree = {
        text = 'undotree',
        align = 'center', -- *optionally* specify an alignment (either 'left', 'center', or 'right')
      },
      -- Or, specify the event which the sidebar executes when leaving:
      ['neo-tree'] = { event = 'BufWipeout' },
      -- Or, specify all three
      Outline = { event = 'BufWinLeave', text = 'symbols-outline', align = 'right' },
    },
  },
}
