return {
    "folke/trouble.nvim",
    opts = {},
    cmd = "Trouble",
    config = function()
        local trouble = require('trouble')
        trouble.setup {}
        vim.keymap.set("n", "<C-t>", vim.cmd.Trouble('diagnostics'))
    end
}
