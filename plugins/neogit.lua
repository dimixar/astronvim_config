return {
    "TimUntersberger/neogit",
    as = "neogit",
    dependencies = {"nvim-lua/plenary.nvim", "sindrets/diffview.nvim"},
    event = "User AstroGitFile",
    config = function()
        require("neogit").setup {integrations = {diffview = true}}
    end
}
