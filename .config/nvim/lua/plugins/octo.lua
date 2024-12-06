return {
    "pwntester/octo.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope.nvim",
        "nvim-tree/nvim-web-devicons",
    },
    opts = {
        -- Configuration options for octo.nvim
        default_remote = { "origin" },
        ssh_aliases = { github = "github.com" },
    },
}
