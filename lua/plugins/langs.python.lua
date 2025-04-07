return {

  --  uv support, <leader>x[..]
  {
    "benomahony/uv.nvim",
    config = function()
      require("uv").setup()
    end,
  },
}
