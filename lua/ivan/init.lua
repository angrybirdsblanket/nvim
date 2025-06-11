require("ivan.remaps")
require("ivan.set")
require("ivan.file_association")
require("ivan.commands")
require("config.lazy")

function get_branch()
  -- run the git command, capture output
  local branch = vim.fn.systemlist("git rev-parse --abbrev-ref HEAD")[1]
  if branch == "" or branch == "HEAD" then
    return nil
  end
  return branch
end

