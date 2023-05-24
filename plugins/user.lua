return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  { "itchyny/calendar.vim", cmd = { "Calendar" } },
  {
    "folke/twilight.nvim",
    opts = {},
    cmd = { "Twilight", "TwilightEnable", "TwilightDisable" },
    keys = { { "<leader>uT", "<cmd>Twilight<cr>", desc = "Toggle Twilight" } },
  },

  {
    "folke/zen-mode.nvim",
    opts = {},
    event = "User AstroFile",
    cmd = { "ZenMode" },
    keys = { { "<leader>uZ", "<cmd>ZenMode<cr>", desc = "Toggle ZenMode" } },
  },

  { "dhruvasagar/vim-table-mode", ft = { "md", "markdown", "org", "norg" } },
  {
    "lukas-reineke/headlines.nvim",
    opts = {},
    ft = { "markdown", "org", "norg" },
    dependencies = "nvim-treesitter/nvim-treesitter",
  },
  {
    "cdelledonne/vim-cmake",
    lazy = false,
    -- event = "BufEnter CMakeLists.txt",
    keys = {
      { "<leader>mc", "<cmd>CMakeClean<cr>", desc = "CMake clean" },
      { "<leader>mi", "<cmd>CMakeInstall<cr>", desc = "CMake install" },
      { "<leader>mg", "<cmd>CMakeGenerate<cr>", desc = "CMake generate" },
      { "<leader>mb", "<cmd>CMakeBuild<cr>", desc = "CMake build" },
      { "<leader>mt", "<cmd>CMakeTest<cr>", desc = "CMake test" },
    },

    opts = {},
    config = function() vim.g.cmake_link_compile_commands = 1 end,
  },
  {
    "alepez/vim-gtest",
    lazy = false,
    opts = {},
    config = function() vim.g["gtest#gtest_command"] = "path/to/test/executable" end,
  },
  {
    "m4xshen/smartcolumn.nvim",
    opts = {},
  },
  {
    "folke/trouble.nvim",
    event = "User AstroFile",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      require("trouble").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end,
  },
  {
    "folke/drop.nvim",
    event = "VimEnter",
    config = function() require("drop").setup { theme = "snow" } end,
  },
}
