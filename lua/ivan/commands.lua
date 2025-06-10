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
    local file_path = vim.fn.expand("%:.")
    local shell     = vim.o.shell
    local command   = { shell, "-ic", "command format " .. file_path }
    local result    = vim.fn.system(command)
    if vim.v.shell_error ~= 0 then
      vim.notify("Format failed:\n" .. result, vim.log.levels.ERROR)
    end
  else
    vim.notify("Prettier is not supported for this file type: " .. filetype, vim.log.levels.WARN)
  end
end, { desc = "Format the current file using Prettier if supported" })
