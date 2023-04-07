return {
    plugins = {
        {
            "AstroNvim/astrocommunity",
            {import = "astrocommunity.completion.copilot-lua"},
            {import = "astrocommunity.completion.copilot-lua-cmp"},
            {import = "astrocommunity.diagnostics.lsp_lines-nvim"},
            {import = "astrocommunity.project.project-nvim"},
            {import = "astrocommunity.utility.neodim"}
        }, {
            "goolord/alpha-nvim",
            opts = function()
                local dashboard = require "alpha.themes.dashboard"
                dashboard.section.header.val = {
                    " █████  ███████ ████████ ██████   ██████",
                    "██   ██ ██         ██    ██   ██ ██    ██",
                    "███████ ███████    ██    ██████  ██    ██",
                    "██   ██      ██    ██    ██   ██ ██    ██",
                    "██   ██ ███████    ██    ██   ██  ██████",
                    " ",
                    "    ███    ██ ██    ██ ██ ███    ███",
                    "    ████   ██ ██    ██ ██ ████  ████",
                    "    ██ ██  ██ ██    ██ ██ ██ ████ ██",
                    "    ██  ██ ██  ██  ██  ██ ██  ██  ██",
                    "    ██   ████   ████   ██ ██      ██"
                }
                dashboard.section.header.opts.hl = "DashboardHeader"

                local button = require("astronvim.utils").alpha_button
                dashboard.section.buttons.val = {
                    button("LDR n", "  New File  "),
                    button("LDR f f", "  Find File  "),
                    button("LDR f o", "  Recents  "),
                    button("LDR f p", "  Find Project  "),
                    button("LDR f '", "  Bookmarks  "),
                    button("LDR S l", "  Last Session  ")
                }

                dashboard.section.footer.val = {
                    " ", " ", " ",
                    "AstroNvim loaded " .. require("lazy").stats().count ..
                        " plugins "
                }
                dashboard.section.footer.opts.hl = "DashboardFooter"

                dashboard.config.layout[1].val = vim.fn.max {
                    2, vim.fn.floor(vim.fn.winheight(0) * 0.2)
                }
                dashboard.config.layout[3].val = 5
                dashboard.config.opts.noautocmd = true
                return dashboard
            end
        }
    }
}
