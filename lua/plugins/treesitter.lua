
local install_lang = {
    "bash",
    "c",
    "cpp",
    "cmake",
    "cuda",
    "json",
    "lua",
    -- "markdown",
    -- "markdown_inline",
    "python",
    -- "query",
    "vim",
    "vimdoc",
    "yaml",
}

local treesitter_setup = {

    "nvim-treesitter/nvim-treesitter",

    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    cmd = { "TSUpdateSync" },
    keys = {
      { "<CR>", desc = "Increment selection" },
      { "<BR>", desc = "Decrement selection", mode = "x" },
    },

    opts = {
      -- TODO: this is NOT in treesitter anymore
      highlight = { enable = true },
      indent = { enable = true },
      incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "<CR>",
            node_incremental = "<CR>",
            node_decremental = "<BS>",
            scope_incremental = "<TAB>",
        }, -- keymaps
      }, -- incremental_selection
    }, -- opts

    config = function(_, opts)
        -- require('nvim-treesitter').setup(opts)
        require('nvim-treesitter').install(install_lang)
    end,

}

return treesitter_setup
