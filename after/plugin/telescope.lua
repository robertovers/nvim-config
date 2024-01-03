local telescope = require("telescope")
local actions = require("telescope.actions")
local builtin = require("telescope.builtin")

telescope.setup({
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
  },
  extensions = {
    file_browser = {
      theme = "dropdown",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      mappings = {
      },
    },
  },
})

vim.keymap.set('n', '<leader>f',
    function ()
        builtin.find_files({
            no_ignore = false,
            hidden = true
        })
    end)

vim.keymap.set('n', '<leader>r',
    function ()
        builtin.live_grep({
            no_ignore = false,
            hidden = true
        })
    end)
