return {
  "alvan/vim-closetag",
  "tpope/vim-surround",
  "lewis6991/gitsigns.nvim",
  "L3MON4D3/LuaSnip",
  "saadparwaiz1/cmp_luasnip",
  {
    "epwalsh/obsidian.nvim",
    ft = "markdown",
    version = "*",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    opts = {
      note_id_func = function(title)
        return title
            and title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
            or tostring(os.time())
      end,
      ui = {
        enable = true,
      },
      workspaces = {
        {
          name = "notes",
          path = "D:/ObsidianNvimRoot/",
        },
      },
    },
  },
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "main",
    dependencies = { "github/copilot.vim" },
    config = function()
      require("CopilotChat").setup({
        window = { layout = "horizontal" }
      })
    end,
    cmd = "CopilotChat",
  },
  {
    'mattn/emmet-vim',
    ft = { 'html', 'css', 'javascriptreact', 'typescriptreact' },
    config = function()
    end,
  },
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = true
  },
  {
    "chentoast/marks.nvim",
    event = "VeryLazy",
    opts = {
      default_mappings = true,
      builtin_marks = { ".", "<", ">", "^" },
      cyclic = true,
      refresh_interval = 250,
      sign_priority = {
        lower = 10,
        upper = 15,
        builtin = 8,
        bookmark = 20,
      },
      bookmark_0 = {
        sign = "⚑",
        virt_text = "bookmark",
        annotate = true,
      },
    },
  },
}
