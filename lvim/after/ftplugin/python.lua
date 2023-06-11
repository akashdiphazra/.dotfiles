require('swenv').setup({
  -- Should return a list of tables with a `name` and a `path` entry each.
  -- Gets the argument `venvs_path` set below.
  -- By default just lists the entries in `venvs_path`.
  get_venvs = function(venvs_path)
    return require('swenv.api').get_venvs(venvs_path)
  end,
  -- Path passed to `get_venvs`.
  venvs_path = vim.fn.getcwd(),
  -- Something to do after setting an environment, for example call vim.cmd.LspRestart
  post_set_venv = function()
    vim.cmd("LspRestart")
  end,
})

lvim.builtin.which_key.mappings["C"] = {
  name = "Python",
  v = { "<cmd>lua require('swenv.api').pick_venv()<cr>", "Choose Env" },
}

local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  {
    command = "flake8",
    filetypes = { "python" },
    args = {
      "--ignore=E402,E501",
    }
  }
}

-- set a formatter, this will override the language server formatting capabilities (if it exists)
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { command = "black", filetypes = { "python" } }
}

local dap = require('dap')
dap.adapters.python = {
  type = 'executable',
  command = '/home/akashdiphazra/Python/myenv/bin/python3',
  args = { '-m', 'debugpy.adapter' },
}

dap.configurations.python = {
  {
    -- The first three options are required by nvim-dap
    type = 'python', -- the type here established the link to the adapter definition: `dap.adapters.python`
    request = 'launch',
    name = "Launch file",
    -- Options below are for debugpy, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings for supported options

    program = "${file}", -- This configuration will launch the current file if used.
    console = "integratedTerminal",
    -- pythonPath = function() return '/home/akashdiphazra/Python/myenv/bin/python3' end;
  },
  -- {
  --   type = 'python',
  --   request = 'launch',
  --   name = 'Django',
  --   program = vim.fn.getcwd() .. '/manage.py', -- NOTE: Adapt path to manage.py as needed
  --   args = { 'runserver' },
  -- }
}
