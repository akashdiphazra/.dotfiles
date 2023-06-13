local status, dap = pcall(require, "dap")
if (not status) then return end

dap.adapters.cppdbg = {
  id = 'cppdbg',
  type = 'executable',
  command = '/usr/local/nvim-dap-adapters/cpp-tools/extension/debugAdapters/bin/OpenDebugAD7',
}

dap.configurations.cpp = {
  {
    name = "vscode-cpptools",
    type = "cppdbg",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopAtEntry = true,
    miDebuggerArgs = "-x ./.gdbinit",
    setupCommands = {
      {
        text = '-enable-pretty-printing',
        description = 'enable pretty printing',
        ignoreFailures = false
      },
    },
  },
  {
    name = 'gdbserver',
    type = 'cppdbg',
    request = 'launch',
    MIMode = 'gdb',
    miDebuggerPath = '/usr/bin/gdb',
    miDebuggerArgs = "-x ./.gdbinit",
    cwd = '${workspaceFolder}',
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
  },
}

dap.configurations.c = dap.configurations.cpp
