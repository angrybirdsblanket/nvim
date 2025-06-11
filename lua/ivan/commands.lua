vim.api.nvim_create_user_command("Prettier", function()
  local filetype = vim.bo.filetype
  local supported = {
    javascript        = true,
    javascriptreact   = true,
    typescript        = true,
    typescriptreact   = true,
    json              = true,
  }
  if supported[filetype] then
    -- Store the cursor position before formatting
    local cursor_pos = vim.api.nvim_win_get_cursor(0)
    local file_path = vim.fn.shellescape(vim.fn.expand("%:."))
    local shell     = vim.o.shell
    -- Modified command to properly quote and escape the filepath
    local command   = { shell, "-ic", "format " .. file_path }
    local result    = vim.fn.system(command)
    
    if vim.v.shell_error ~= 0 then
      vim.notify("Format failed:\n" .. result, vim.log.levels.ERROR)
    else
      -- Reload the buffer after successful formatting
      vim.cmd("edit!")
      -- Restore cursor position
      pcall(vim.api.nvim_win_set_cursor, 0, cursor_pos)
      vim.notify("Format successful", vim.log.levels.INFO)
    end
  else
    vim.notify("Prettier is not supported for this file type: " .. filetype, vim.log.levels.WARN)
  end
end, { desc = "Format the current file using Prettier if supported" })
