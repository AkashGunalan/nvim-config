return {
    {
        'MunifTanjim/prettier.nvim',
        dependencies = {
            'neovim/nvim-lspconfig',
            'jose-elias-alvarez/null-ls.nvim',
        },

        config = function()
            local null_ls = require("null-ls")
            null_ls.setup({})

            local prettier = require("prettier")
            prettier.setup({
                bin = 'prettier',

                filetypes = {
                    "css",
                    "graphql",
                    "html",
                    "javascript",
                    "javascriptreact",
                    "json",
                    "less",
                    "markdown",
                    "scss",
                    "typescript",
                    "typescriptreact",
                    "yaml",
                },

                cli_options = {
                    print_width = 80,
                    tab_width = 4,
                    bracket_same_line = true,
                    embedded_language_formatting = "auto",
                    tabs = true,
                    no_semi = false,
                    single_quotes = true,
                    jsx_single_quote = false,
                    bracket_spacing = true,
                    arrow_parens = "avoid",
                    end_of_line = "crlf",
                    single_attribute_per_line = true,
                    vue_indent_script_and_style = true,
                }
            })
        end
    },
}
