return {
  -- colour scheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
    },
  },

  -- Find Replace
  {
    "chrisgrieser/nvim-rip-substitute",
    keys = {
      {
        "g/",
        function()
          require("rip-substitute").sub()
        end,
        mode = { "n", "x" },
        desc = "Rip Substitute",
      },
    },
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
}
