return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  cmd = "Telescope",
  keys = {
    { 
      "<leader>f", 
      function() 
        require("telescope.builtin").find_files({
          no_ignore = false,
          hidden = true
        })
      end, 
      desc = "Find Files" 
    },
    { 
      "<leader>r", 
      function() 
        require("telescope.builtin").live_grep({
          no_ignore = false,
          hidden = true
        })
      end, 
      desc = "Live Grep" 
    },
    { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
    { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Help Tags" },
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

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
  end,
}
