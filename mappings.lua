return {
    n = {
        ["<leader>c"] = {
            function()
                local bufs = vim.fn.getbufinfo { buflisted = true }
                require("astronvim.utils.buffer").close(0)
                if require("astronvim.utils").is_available "alpha-nvim" and
                    not bufs[2] then
                    require("alpha").start(true)
                end
            end,
            desc = "Close buffer"
        },
        ["<leader>fp"] = { "<cmd>Telescope projects<cr>", desc = "Find project" },
        ["<leader>gn"] = { "<cmd>Neogit<cr>", desc = "Open Neogit" },
        ["<leader>gdo"] = { "<cmd>DiffviewOpen<cr>", desc = "Open diffview" },
        ["<leader>gdc"] = { "<cmd>DiffviewClose<cr>", desc = "Close diffview" },
        ["<leader>gd"] = { "", desc = "Diffview opts" }
    }
}
