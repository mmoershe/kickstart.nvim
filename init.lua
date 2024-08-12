---
---   $$\           $$\   $$\         $$\
---   \__|          \__|  $$ |        $$ |
---   $$\ $$$$$$$\  $$\ $$$$$$\       $$ |$$\   $$\  $$$$$$\
---   $$ |$$  __$$\ $$ |\_$$  _|      $$ |$$ |  $$ | \____$$\
---   $$ |$$ |  $$ |$$ |  $$ |        $$ |$$ |  $$ | $$$$$$$ |
---   $$ |$$ |  $$ |$$ |  $$ |$$\     $$ |$$ |  $$ |$$  __$$ |
---   $$ |$$ |  $$ |$$ |  \$$$$  |$$\ $$ |\$$$$$$  |\$$$$$$$ |
---   \__|\__|  \__|\__|   \____/ \__|\__| \______/  \_______|
---

-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

-- OPTIONS
require 'options'

-- KEYMAPS
require 'keymaps'

-- PLUGINS
require 'lazy-plugins'
