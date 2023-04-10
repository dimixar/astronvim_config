return {
    "TimUntersberger/neogit",
    as = "neogit",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    event = "User AstroGitFile",
    config = function()
        require("neogit").setup {}
    end,
}
