return {
  'epwalsh/obsidian.nvim',
  lazy = true,
  ft = 'markdown',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  opts = {
    workspaces = {
      {
        name = 'Notes',
        path = 'C:\\Users\\LiamM\\Documents\\Notes',
      },
    },
    notes_subdir = '00-inbox',
    new_notes_location = 'notes_subdir',
    disable_frontmatter = true,
    templates = {
      subdir = '98-templates',
      date_format = '%Y-%m-%d',
      time_format = '%H:%M:%S',
    },
    mappings = {
      ['gf'] = {
        action = function()
          return require('obsidian').util.gf_passthrough()
        end,
        opts = { noremap = false, expr = true, buffer = true },
      },
    },
    completion = {
      nvim_cmp = true,
      min_chars = 2,
    },
    ui = {
      checkboxes = {},
      bullets = {},
    },
  },
}
