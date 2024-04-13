-- Collection of various small independent plugins/modules
return {
  'ThePrimeagen/harpoon',
  dependencies = {
    'nvim-telescope/telescope.nvim',
    'folke/which-key.nvim',
  },
  init = function()
    require('telescope').load_extension 'harpoon'

    require('which-key').register {
      ['<leader>h'] = {
        name = '+[H]arpoon',
        m = { require('harpoon.mark').add_file, '[M]ark file' },
        h = { require('harpoon.ui').toggle_quick_menu, 'Toggle harpoon menu' },
        n = { require('harpoon.ui').nav_next, '[N]ext' },
        p = { require('harpoon.ui').nav_prev, '[P]revious' },
        t = {
          function()
            require('harpoon.term').gotoTerminal(1)
          end,
          'Open terminal',
        },
        ['1'] = {
          function()
            require('harpoon.ui').nav_file(1)
          end,
          'Switch to 1',
        },
        ['2'] = {
          function()
            require('harpoon.ui').nav_file(2)
          end,
          'Switch to 2',
        },
        ['3'] = {
          function()
            require('harpoon.ui').nav_file(3)
          end,
          'Switch to 3',
        },
        ['4'] = {
          function()
            require('harpoon.ui').nav_file(4)
          end,
          'Switch to 4',
        },
      },
    }
  end,
}
