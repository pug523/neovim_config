vim.pack.add({ "https://github.com/goolord/alpha-nvim" })

local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

dashboard.section.header.val = {
  [[ ███████████                                            ██                                               █████                                                    ]],
  [[ ▒▒███▒▒▒▒▒███                                          ███                                              ▒▒███                                                    ]],
  [[  ▒███    ▒███ █████ ████  ███████ █████ ████ ████████ ▒▒▒   █████     █████ ███ █████  ██████  ████████  ▒███ █████  █████  ████████   ██████    ██████   ██████ ]],
  [[  ▒██████████ ▒▒███ ▒███  ███▒▒███▒▒███ ▒███ ▒▒███▒▒███     ███▒▒     ▒▒███ ▒███▒▒███  ███▒▒███▒▒███▒▒███ ▒███▒▒███  ███▒▒  ▒▒███▒▒███ ▒▒▒▒▒███  ███▒▒███ ███▒▒███]],
  [[  ▒███▒▒▒▒▒▒   ▒███ ▒███ ▒███ ▒███ ▒███ ▒███  ▒███ ▒▒▒     ▒▒█████     ▒███ ▒███ ▒███ ▒███ ▒███ ▒███ ▒▒▒  ▒██████▒  ▒▒█████  ▒███ ▒███  ███████ ▒███ ▒▒▒ ▒███████ ]],
  [[  ▒███         ▒███ ▒███ ▒███ ▒███ ▒███ ▒███  ▒███          ▒▒▒▒███    ▒▒███████████  ▒███ ▒███ ▒███      ▒███▒▒███  ▒▒▒▒███ ▒███ ▒███ ███▒▒███ ▒███  ███▒███▒▒▒  ]],
  [[  █████        ▒▒████████▒▒███████ ▒▒████████ █████         ██████      ▒▒████▒████   ▒▒██████  █████     ████ █████ ██████  ▒███████ ▒▒████████▒▒██████ ▒▒██████ ]],
  [[ ▒▒▒▒▒          ▒▒▒▒▒▒▒▒  ▒▒▒▒▒███  ▒▒▒▒▒▒▒▒ ▒▒▒▒▒         ▒▒▒▒▒▒        ▒▒▒▒ ▒▒▒▒     ▒▒▒▒▒▒  ▒▒▒▒▒     ▒▒▒▒ ▒▒▒▒▒ ▒▒▒▒▒▒   ▒███▒▒▒   ▒▒▒▒▒▒▒▒  ▒▒▒▒▒▒   ▒▒▒▒▒▒  ]],
  [[                          ███ ▒███                                                                                           ▒███                                 ]],
  [[                         ▒▒██████                                                                                            █████                                ]],
  [[                          ▒▒▒▒▒▒                                                                                            ▒▒▒▒▒                                 ]],
}

local function button(sc, txt, keybind)
  local b = dashboard.button(sc, txt, keybind)
  b.opts.hl = "Function"
  b.opts.hl_shortcut = "Type"
  return b
end

dashboard.section.buttons.val = {
  button("f", "󰈞  Find File", "<cmd>Telescope find_files<CR>"),
  button("n", "  New File", "<cmd>ene <BAR> startinsert <CR>"),
  button("r", "󰄉  Recent Files", "<cmd>Telescope oldfiles<CR>"),
  button(
    "g",
    "󰱺  Find Text",
    "<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>"
  ),
  button("c", "  Configuration", "<cmd>e $MYVIMRC <CR>"),
  button("q", "󰩈  Quit", "<cmd>qa<CR>"),
  button(
    "s",
    "󰦛  Restore last session",
    "<cmd>lua require('persistence').load()<CR>"
  ),
}

dashboard.section.footer.hl = "Comment"

dashboard.config.opts.margin = 5

alpha.setup(dashboard.config)
