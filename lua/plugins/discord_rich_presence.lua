-- lua/plugins/presence.lua
local home = vim.loop.os_homedir()

return {
  {
    'andweeb/presence.nvim',
    event = 'VeryLazy',
    config = function()
      require('presence').setup({
        workspace_text = function(filename)
          local path = vim.fn.expand("%:p")
          if path:match("^" .. home .. "/%.config/nvim/") then
            return "Editing Neovim config"
          elseif path:match("^" .. home .. "/programming/nyp/y2s1/full_stack_dev/project/initiate%-platform") 
              or path:match("^" .. home .. "/programming/nyp/y2s1/full_stack_dev/project/initiate%-backend") then
            return "Initiate!"
          elseif path:match("^" .. home .. "/programming/personal/learning/rust/[^/]+") then
            return "Fighting the bloody borrow checker again"
          elseif path:match("^" .. home .. "/programming/nyp/y2s1/advanced_programming/assignment%_2/ASN2_Student_Resource/[^/]+") then
            return "sweating c# assignment"
          end
          local cwd = vim.fn.getcwd()
          return ("Editing %s"):format(vim.fn.fnamemodify(cwd, ":t"))
        end,
      })
    end,
  },
}

