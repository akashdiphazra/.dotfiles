-- trouble.nvim keymaps
lvim.builtin.which_key.mappings["t"] = {
  name = "Diagnostics",
  t = { "<cmd>TroubleToggle<cr>", "trouble" },
  w = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "workspace" },
  d = { "<cmd>TroubleToggle document_diagnostics<cr>", "document" },
  q = { "<cmd>TroubleToggle quickfix<cr>", "quickfix" },
  l = { "<cmd>TroubleToggle loclist<cr>", "loclist" },
  r = { "<cmd>TroubleToggle lsp_references<cr>", "references" }
}

-- swenv.nvim keymaps
lvim.builtin.which_key.mappings["C"] = {
  name = "Python",
  v = { "<cmd>lua require('swenv.api').pick_venv()<cr>", "Choose Env" },
}

-- competitest keymaps
lvim.builtin.which_key.mappings["k"] = {
  name = "Competitive Test",
  r = { "<cmd>CompetiTestRun<cr>", "Run" },
  a = { "<cmd>CompetiTestAdd<cr>", "Add" },
  e = { "<cmd>CompetiTestEdit<cr>", "Edit" },
  d = { "<cmd>CompetiTestDelete<cr>", "Delete" },
  k = { "<cmd>CompetiTestRunNE<cr>", "Toggle UI" }
}
