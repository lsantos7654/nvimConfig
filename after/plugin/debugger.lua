local dap = require('dap')

dap.adapters.cpp = {
  type = 'executable',
  attach = {
    pidProperty = "pid",
    pidSelect = "ask"
  },
  command = 'gdb', -- This might be gdb, lldb, etc., depending on your debugger
  env = {
    LLDB_LAUNCH_FLAG_LAUNCH_IN_TTY = "YES"
  },
  args = {},
}

dap.configurations.cpp = {
  {
    name = "Launch",
    type = "cpp",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
    args = {},
    -- More configuration options can be added here
  },
}

