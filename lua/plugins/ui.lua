return {
  {
    "ziontee113/color-picker.nvim",
    config = function()
      require("color-picker").setup({
        ["icons"] = { "ﱢ", "" },
        ["border"] = "rounded",
      })
    end,
    cmd = { "PickColor", "PickColorInsert" },
  },
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup()
    end,
  },
  {
    "mg979/vim-visual-multi",
    branch = "master",
  },
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("nvim-web-devicons").setup({ default = true })
      require("nvim-tree").setup()
    end,
  },
  {
    "bluz71/vim-nightfly-colors",
    name = "nightfly",
    priority = 1000,
  },
}
