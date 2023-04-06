return {
    plugins = {
        {
            "AstroNvim/astrocommunity",
            {import = "astrocommunity.completion.copilot-lua"},
            {import = "astrocommunity.completion.copilot-lua-cmp"},
            {import = "astrocommunity.diagnostics.lsp_lines-nvim"}
        }
    }
}
