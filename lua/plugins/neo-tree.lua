return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  init = function()
    vim.api.nvim_create_autocmd("VimEnter", {
      callback = function()
        vim.cmd("Neotree show")
      end,
    })
  end,
  opts = {
    close_if_last_window = true,
    popup_border_style = "rounded",
    event_handlers = {
      {
        event = "file_added",
        handler = function()
          vim.cmd("Neotree refresh")
        end,
      },
      {
        event = "file_deleted",
        handler = function()
          vim.cmd("Neotree refresh")
        end,
      },
      {
        event = "file_moved",
        handler = function()
          vim.cmd("Neotree refresh")
        end,
      },
      {
        event = "file_renamed",
        handler = function()
          vim.cmd("Neotree refresh")
        end,
      },
    },
    filesystem = {
      follow_current_file = { enabled = true },
      use_libuv_file_watcher = true,
      filtered_items = {
        visible = false,
        hide_dotfiles = false,
        hide_gitignored = false,
        hide_by_name = {
          "__pycache__",
        },
        hide_by_pattern = {
          "*.pyc",
        },
      },
    },
    window = {
      position = "left",
      width = 35,
      mappings = {
        ["<space>"] = "none", -- don't conflict with leader
      },
    },
    default_component_configs = {
      indent = {
        with_expanders = true,
        expander_collapsed = "▸",
        expander_expanded = "▾",
        with_markers = false,
        indent_size = 2,
      },
      icon = {
        folder_closed = "",
        folder_open = "",
        folder_empty = "",
      },
      git_status = {
        symbols = {
          added = "✚",
          modified = "",
          deleted = "✖",
          renamed = "󰁕",
          untracked = "",
          ignored = "",
          unstaged = "󰄱",
          staged = "",
          conflict = "",
        },
      },
    },
  },
}
