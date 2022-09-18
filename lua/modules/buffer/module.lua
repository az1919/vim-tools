local api = vim.api

local M = {}

function M.New() 
  local ret = api.nvim_command('enew') -- equivalent to :enew
  -- vim.bo[0].buftype=nofile -- set the current buffer's (buffer 0) buftype to nofile
  -- vim.bo[0].bufhidden=hide
  -- vim.bo[0].swapfile=false
  print("ret: %s", ret)
end

return M
