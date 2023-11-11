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
            "////////////////////////////////////////////////////////////",
            "//                                                        //",
            "//                                                        //",
            "//   ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗   //",
            "//   ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║   //",
            "//   ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║   //",
            "//   ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║   //",
            "//   ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║   //",
            "//   ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝   //",
            "//                                                        //",
            "//                                                        //",
            "////////////////////////////////////////////////////////////",

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
              key_hl = "Number",
              key_format = " %s", -- remove default surrounding `[]`
              action = "NeovimProjectLoadRecent",
            },
            {
              icon = " ",
              desc = "Projects",
              desc_hl = "String",
              key = "p",
              key_hl = "Number",
              key_format = " %s", -- remove default surrounding `[]`
              action = "Telescope neovim-project discover",
            },
            {
              icon = "󰆼 ",
              desc = "Database Mode",
              desc_hl = "String",
              key = "d",
              key_hl = "Number",
              key_format = " %s", -- remove default surrounding `[]`
              action = "tabnew | DBUIToggle",
            },
            {
              icon = " ",
              desc = "Recent Files",
              desc_hl = "String",
              key = "f",
              key_hl = "Number",
              key_format = " %s", -- remove default surrounding `[]`
              action = "Telescope oldfiles",
            },
          },
          footer = {}, --your footer
        },
      })
    end,
    requires = { "nvim-tree/nvim-web-devicons" },
  },
  -- {
  --   "glepnir/dbsession.nvim",
  --   cmd = { "SessionSave", "SessionDelete", "SessionLoad" },
  --   opts = { --config --}
  --     auto_save_on_exit = true,
  --   },
  -- },
}
