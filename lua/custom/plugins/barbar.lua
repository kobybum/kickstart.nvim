-- Editor tabs

return {
  'romgrk/barbar.nvim',
  dependencies = {
    'lewis6991/gitsigns.nvim',
    'nvim-tree/nvim-web-devicons',
  },
  init = function()
    -- vim.g.barbar_auto_setup = false

    -- Move to previous/next
    vim.keymap.set('n', '<S-Tab>', vim.cmd.BufferPrevious, { desc = 'Previous tab' })
    vim.keymap.set('n', '<Tab>', vim.cmd.BufferNext, { desc = 'Next tab' })

    -- Close buffer
    vim.keymap.set('n', '<leader>w', vim.cmd.BufferClose, { desc = 'Close buffer' })

    -- Magic buffer-picking mode
    vim.keymap.set('n', '<C-p>', vim.cmd.BufferPick, { desc = 'Magic buffer pick' })

    vim.keymap.set('n', '<leader>q', vim.cmd.BufferCloseAllButVisible, { desc = 'Close all but visibile' })

    -- Re-order to previous/next
    -- map('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', opts)
    -- map('n', '<A->>', '<Cmd>BufferMoveNext<CR>', opts)
    -- Goto buffer in position...
    -- map('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts)
    -- map('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts)
    -- map('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts)
    -- map('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts)
    -- map('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts)
    -- map('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opts)
    -- map('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opts)
    -- map('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opts)
    -- map('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opts)
    -- map('n', '<A-0>', '<Cmd>BufferLast<CR>', opts)
    -- Pin/unpin buffer
    -- map('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)
    -- Wipeout buffer
    --                 :BufferWipeout
    -- Close commands
    --                 :BufferCloseAllButCurrent
    --                 :BufferCloseAllButPinned
    --                 :BufferCloseAllButCurrentOrPinned
    --                 :BufferCloseBuffersLeft
    --                 :BufferCloseBuffersRight
    -- Sort automatically by...
    -- map('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
    -- map('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
    -- map('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
    -- map('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)
  end,
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
