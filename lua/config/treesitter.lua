require('nvim-treesitter.configs').setup {
    ensure_installed = {"c", "cpp", "python", "json"},
    highlight = {
        enable = true,
        --enable = false,
        additional_vim_regex_highlighting = false
    },
}
