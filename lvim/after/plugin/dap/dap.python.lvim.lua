local status, dap = pcall(require, "dap")
if (not status) then return end

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
        justMyCode = true,
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
