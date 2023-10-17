require ("ibl").setup({
    --char = "│",
    --show_first_indent_level = true,
    indent = {
       char = "│",
    },
    exclude = {
        filetypes = {
            "startify",
            "dashboard",
            "dotooagenda",
            "log",
            "fugitive",
            "gitcommit",
            "packer",
            "vimwiki",
            "markdown",
            "json",
            "txt",
            "vista",
            "help",
            "todoist",
            "NvimTree",
            "peekaboo",
            "git",
            "TelescopePrompt",
            "undotree",
            "flutterToolsOutline",
            "", -- for all buffers without a file type
        },
        buftypes = { 
            "terminal",
            "nofile" 
        },
    },
    scope = {
        enabled = true,
        show_end = true,
    },
    --[[
    show_trailing_blankline_indent = false,
    show_current_context = true,
    context_patterns = {
        "class",
        "function",
        "method",
        "block",
        "list_literal",
        "selector",
        "^if",
        "^table",
        "if_statement",
        "while",
        "for",
        "type",
        "var",
        "import",
    },
    space_char_blankline = " ",
    ]]--
})
-- because lazy load indent-blankline so need readd this autocmd
--vim.cmd("autocmd CursorMoved * IndentBlanklineRefresh")
