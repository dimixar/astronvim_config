return {
    "sindrets/diffview.nvim",
    event = "User AstroGitFile",
    config = function()
        require("diffview").setup { integrations = { diffview = true } }
    end
}
