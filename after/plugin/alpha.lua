local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

dashboard.section.header.val = {

  [[                                        ]],
  [[         (:)_                           ]],
  [[       ,'    `.                         ]],
  [[      :        :                        ]],
  [[      |        |              ___       ]],
  [[      |       /|    ______   // _\      ]],
  [[      ; \  _,' :  ,'      `. \\  -\     ]],
  [[     /          \/          \ \\  :     ]],
  [[    (            :  ------.  `-'  |     ]],
  [[ ____\___    ____|______   \______|____ ]],
  [[         |::|           '--`            ]],
  [[         |::|                           ]],
  [[         |::|                           ]],
  [[         |::|                           ]],
  [[         |::;                           ]],
  [[         `:/                            ]]

}

dashboard.section.buttons.val = {
  dashboard.button("f", "  find file", ":Telescope find_files <CR>"),
  dashboard.button("r", "  recent files", ":Telescope oldfiles <CR>"),
  dashboard.button("c", "  config", ":e ~/.config/nvim/after/plugin/alpha.lua<CR>"),
  dashboard.button("q", "  quit neovim", ":qa<CR>"),
}

local function footer()
  local str = "[._.]"
  return str
end

dashboard.section.footer.val = footer()

dashboard.section.header.opts.hl = "Number"
dashboard.section.footer.opts.hl = "Type"

dashboard.opts.opts.noautocmd = true
alpha.setup(dashboard.opts)

vim.keymap.set("n", "<leader>h", ":Alpha<CR>", { noremap = true })
