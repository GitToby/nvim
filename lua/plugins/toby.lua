return {
  -- default colour theme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
    },
  },

  --  uv support, <leader>x[..]
  {
    "benomahony/uv.nvim",
    config = function()
      require("uv").setup()
    end,
  },

  -- explorer window settings
  {
    "folke/snacks.nvim",
    opts = {
      notifier = { enabled = true },

      -- show hidden files in snacks.explorer
      picker = {
        sources = {
          explorer = {
            -- show hidden files like .env
            hidden = true,
            -- show files ignored by git like node_modules
            ignored = true,
            -- ignore some dirs
            exclude = { ".git" },
          },
        },
      },
    },
  },

  -- SQL stuff
  {
    "kristijanhusak/vim-dadbod-ui",
    dependencies = {
      { "tpope/vim-dadbod", lazy = true },
      { "kristijanhusak/vim-dadbod-completion", ft = { "sql", "mysql", "plsql" }, lazy = true }, -- Optional
    },
    cmd = {
      "DBUI",
      "DBUIToggle",
      "DBUIAddConnection",
      "DBUIFindBuffer",
    },
    init = function()
      -- Your DBUI configuration
      vim.g.db_ui_use_nerd_fonts = 1
    end,
  },
}
