return {
  {
    "nvimdev/dashboard-nvim",
    opts = function(_, opts)
      -- Header logo
      opts.config.header = {
        [[]],
        [[]],
        [[]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⠀⠀⠀⣠⣶⣶⠖]],
        [[⠀⠀⠀⠀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⡀⣴⣿⣿⠀⣠⣾⣿⠟⠁⠀]],
        [[⠀⠀⠀⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠀⣿⣿⣿⣾⣿⠟⠁⠀⠀⠀]],
        [[⠀⣀⣀⣀⣀⣾⣿⣟⣀⡀⠀⣀⣀⡀⠀⢰⣿⣿⠁⢀⣿⣿⣿⠟⠁⣠⣶⠀⠀⠀]],
        [[⣸⣿⣿⣿⣿⣿⣿⣿⡟⠀⣸⣿⣿⠁⢠⣿⣿⢏⣴⣿⣿⣿⣿⠀⢸⣿⣿⠀⠀⠀]],
        [[⠀  ⢨⣿⣿⠋  ⣠⣿⣿⠇⠀⣼⣿⣿⣿⣿⠟⣿⣿⣿⠀⢸⣿⣿⠀⠀⠀]],
        [[⠀⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠀⢰⣿⣿⣿⠟⠁⠀⣿⣿⣿⠀⢸⣿⣿⠀⠀⠀]],
        [[⠀⠉⠉⠉⠉⠉⠉⠉⣹⣿⣿⠁⠀⠉⠉⠉⠁⠀⠀⠀⣿⣿⣿⠀⢸⣿⣿⠀⠀⠀]],
        [[⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⣿⣿⣿⠀⢸⡟⠋⠀⠀⠀]],
        [[⠀⠀⠀⠀⠈⠉⠉⣿⣿⡟⠉⠉⠉⠉⠉⠉⠉⠉⠁⠀⠉⠉⠉⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠸⠿⠿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[]],
        [[]],
      }

      -- Button menu
      opts.config.center = {
        {
          action = "Telescope oldfiles",
          icon = " ",
          desc = "  Recent files",
          key = "r",
        },
        {
          action = [[lua require("lazyvim.util").telescope.config_files()()]],
          icon = " ",
          desc = "  Config",
          key = "c",
        },
        {
          action = 'lua require("persistence").load()',
          icon = " ",
          desc = "  Restore Session",
          key = "s",
        },
        {
          action = "qa",
          icon = " ",
          desc = "  Quit",
          key = "q",
        },
      }
      -- Button menu space
      for _, button in ipairs(opts.config.center) do
        button.desc = button.desc .. string.rep(" ", 34 - #button.desc)
        button.key_format = "%s"
      end

      -- Footer
      opts.config.footer = function()
        local stats = require("lazy").stats()
        return { "   󱁏 Loaded " .. stats.loaded .. "/" .. stats.count .. " plugins" }
      end
    end,
  },
}
