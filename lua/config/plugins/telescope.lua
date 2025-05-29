return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',

    dependencies = {
        'nvim-lua/plenary.nvim'
    },

    config = function()
        local telescope = require('telescope')
        local builtin = require('telescope.builtin')
        telescope.setup {}

        vim.keymap.set('n', '<leader>ff', builtin.find_files)
        vim.keymap.set('n', '<leader>fc', function()
            builtin.find_files {
                cwd = vim.fn.stdpath('config')
            }
        end)

        vim.keymap.set('n', '<leader>ws', function()
            local word = vim.fn.expand('<cword>')
            builtin.grep_string({ search = word })
        end)

        vim.keymap.set('n', '<leader>Ws', function()
            local word = vim.fn.expand('<cWord>')
            builtin.grep_string({ search = word })
        end)

        vim.keymap.set('n', '<leader>ps', function()
            local word = vim.fn.input('Grep >')
            builtin.grep_string({ search = word })
        end)

        vim.keymap.set('n', '<leader>gf', builtin.git_files)
        vim.keymap.set('n', '<leader>fh', builtin.help_tags)

        vim.keymap.set('n', '<leader>sx', builtin.diagnostics)
        vim.keymap.set('n', '<leader>sd', builtin.lsp_type_definitions)
        vim.keymap.set('n', '<leader>sr', builtin.lsp_references)
    end
}
