return {
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    config = function()
      require("dashboard").setup({
        theme = "doom",
        config = {
          header = {
            "",
            "",
            "",
            "",
            "",
            "",
            "                                    dddddddd                                    ",
            "NNNNNNNN        NNNNNNNN            d::::::d                                    ",
            "N:::::::N       N::::::N            d::::::d                                    ",
            "N::::::::N      N::::::N            d::::::d                                    ",
            "N:::::::::N     N::::::N            d:::::d                                     ",
            "N::::::::::N    N::::::N    ddddddddd:::::drrrrr   rrrrrrrrr      ooooooooooo   ",
            "N:::::::::::N   N::::::N  dd::::::::::::::dr::::rrr:::::::::r   oo:::::::::::oo ",
            "N:::::::N::::N  N::::::N d::::::::::::::::dr:::::::::::::::::r o:::::::::::::::o",
            "N::::::N N::::N N::::::Nd:::::::ddddd:::::drr::::::rrrrr::::::ro:::::ooooo:::::o",
            "N::::::N  N::::N:::::::Nd::::::d    d:::::d r:::::r     r:::::ro::::o     o::::o",
            "N::::::N   N:::::::::::Nd:::::d     d:::::d r:::::r     rrrrrrro::::o     o::::o",
            "N::::::N    N::::::::::Nd:::::d     d:::::d r:::::r            o::::o     o::::o",
            "N::::::N     N:::::::::Nd:::::d     d:::::d r:::::r            o::::o     o::::o",
            "N::::::N      N::::::::Nd::::::ddddd::::::ddr:::::r            o:::::ooooo:::::o",
            "N::::::N       N:::::::N d:::::::::::::::::dr:::::r            o:::::::::::::::o",
            "N::::::N        N::::::N  d:::::::::ddd::::dr:::::r             oo:::::::::::oo ",
            "NNNNNNNN         NNNNNNN   ddddddddd   dddddrrrrrrr               ooooooooooo  ",
            "",
            "",
            "",
            "",
            "",
            "",
          }, --your headerh
          center = {
            {
              icon = "󰆓 ",
              desc = "Load Session",
              desc_hl = "String",
              key = "s",
              keymap = "SPC s l",
              key_hl = "Number",
              key_format = " %s", -- remove default surrounding `[]`
              action = "SessionLoad",
            },
          },
          footer = {}, --your footer
        },
      })
    end,
    requires = { "nvim-tree/nvim-web-devicons" },
  },
  {
    "glepnir/dbsession.nvim",
    cmd = { "SessionSave", "SessionDelete", "SessionLoad" },
    opts = { --config --}
      auto_save_on_exit = true,
    },
  },
}
