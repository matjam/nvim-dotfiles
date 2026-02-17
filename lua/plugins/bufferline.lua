return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    options = {
      mode = "buffers",
      offsets = {
        {
          filetype = "neo-tree",
          text = "File Explorer",
          highlight = "Directory",
          separator = true,
        },
      },
      separator_style = "slant",
      show_buffer_close_icons = true,
      show_close_icon = false,
      diagnostics = false,
      close_command = function(bufnum)
        local bufs = vim.tbl_filter(function(b)
          return vim.bo[b].buflisted
        end, vim.api.nvim_list_bufs())
        if #bufs <= 1 then
          -- Last buffer: create a new empty one, then close the old one
          vim.cmd("enew")
          vim.cmd("bdelete! " .. bufnum)
        else
          -- Close the buffer (Neovim will auto-switch to another)
          vim.cmd("bdelete! " .. bufnum)
        end
      end,
    },
  },
}
