local utility = require("utils.utility");

return {
  "nvim-telescope/telescope.nvim",
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim"
    },
    config = function()
      local Path = require("plenary.path")
      local Job = require("plenary.job")
      local fb_git = require("telescope._extensions.file_browser.git")
      local fb_utils = require("telescope._extensions.file_browser.utils")

      fb_git.find_root = function(cwd)
        local path_obj = Path:new(cwd)
        local parent = path_obj:parent()
        local folder = path_obj.filename
        local safe_path = Path:new(parent, folder)
        local abs_path = safe_path:absolute()

        local stat = vim.loop.fs_stat(abs_path)
        if not stat or stat.type ~= "directory" then
          return nil
        end

        local ok, result = pcall(function()
          return Job:new({
            cwd = abs_path,
            command = "git",
            args = { "rev-parse", "--show-toplevel" },
          }):sync()[1]
        end)

        if not ok then
          return nil
        end

        return result
      end

      fb_utils.to_absolute_path = function(str)
        str = vim.fn.expand(str)
        str = str:gsub("[\\/]$", ""):gsub("%[", "["):gsub("%]", "]")
        local path = Path:new(str)
        local stat = vim.loop.fs_stat(path:absolute())

        if not stat then
          return nil
        elseif stat.type ~= "directory" then
          fb_utils.notify("to_absolute_path", {
            msg = string.format("Given path '%s' is not a directory", path:absolute()),
            level = "WARN",
          })
          return nil
        end

        return path:absolute()
      end

      require('telescope').setup({
        defaults = {
          initial_mode = "normal",
          path_display = {
            shorten = 3,
            truncate = true,
            custom = { utility.normalize_path }
          }
        },
        pickers = {
          find_files = {
            hidden = true
          }
        },
        extensions = {
          file_browser = {
            hidden = true,
            git_status = false
          }
        }
      })

      require('telescope').load_extension("file_browser")
    end
  }
}
