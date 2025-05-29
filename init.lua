require("config.remap")
require("config.options")
require("config.lazy")
print("main config")

vim.api.nvim_create_autocmd('TextYankPost', {
    callback = function()
        vim.hl.on_yank()
    end,
})

vim.api.nvim_create_autocmd('BufWritePost', {
    pattern = { '*.js', '*.ts', '*.tsx', '*.jsx' },
    callback = function()
        vim.cmd.Prettier()
    end,
})
