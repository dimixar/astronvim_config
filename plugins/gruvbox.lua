return {
    "ellisonleao/gruvbox.nvim",
    name = "gruvbox",
    config = function()
        require("gruvbox").setup()
        vim.o.background = "dark"
    end
}
