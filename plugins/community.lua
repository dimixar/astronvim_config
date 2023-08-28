return {
    "AstroNvim/astrocommunity",
    {import = "astrocommunity.completion.copilot-lua"}, {
        "copilot.lua",
        opts = {
            suggestion = {
                keymap = {
                    accept = "<C-l>",
                    accept_word = false,
                    accept_line = false,
                    next = "<C-.>",
                    prev = "<C-,>",
                    dismiss = "<C/>"
                }
            }
        }
    }, {import = "astrocommunity.completion.copilot-lua-cmp"},
    {import = "astrocommunity.diagnostics.lsp_lines-nvim"},
    {import = "astrocommunity.project.project-nvim"},
    {import = "astrocommunity.utility.neodim"}
}
