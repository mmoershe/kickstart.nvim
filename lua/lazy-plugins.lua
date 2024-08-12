--
--             $$\                     $$\
--             $$ |                    \__|
--    $$$$$$\  $$ |$$\   $$\  $$$$$$\  $$\ $$$$$$$\   $$$$$$$\
--   $$  __$$\ $$ |$$ |  $$ |$$  __$$\ $$ |$$  __$$\ $$  _____|
--   $$ /  $$ |$$ |$$ |  $$ |$$ /  $$ |$$ |$$ |  $$ |\$$$$$$\
--   $$ |  $$ |$$ |$$ |  $$ |$$ |  $$ |$$ |$$ |  $$ | \____$$\
--   $$$$$$$  |$$ |\$$$$$$  |\$$$$$$$ |$$ |$$ |  $$ |$$$$$$$  |
--   $$  ____/ \__| \______/  \____$$ |\__|\__|  \__|\_______/
--   $$ |                    $$\   $$ |
--   $$ |                    \$$$$$$  |
--   \__|                     \______/
--

-- ##################################
-- Installing `lazy.nvim` plugin manager
-- ##################################
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.uv.fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

-- ##################################
--
--
--
--
-- ##################################
-- Importing plugins
-- ##################################

require('lazy').setup({

  require 'kickstart/plugins/alpha',

  require 'kickstart/plugins/color_scheme',

  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically

  -- require 'kickstart/plugins/gitsigns',
  require 'kickstart/plugins/lazygit',

  require 'kickstart/plugins/which-key',

  require 'kickstart/plugins/telescope',

  require 'kickstart/plugins/lspconfig',

  require 'kickstart/plugins/conform',

  require 'kickstart/plugins/cmp',

  require 'kickstart/plugins/todo-comments',

  require 'kickstart/plugins/mini',

  require 'kickstart/plugins/treesitter',

  require 'kickstart.plugins.neo-tree',

  require 'kickstart.plugins.debug',

  require 'kickstart.plugins.indent_line',

  require 'kickstart.plugins.lint',

  require 'kickstart.plugins.autopairs',
}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})
