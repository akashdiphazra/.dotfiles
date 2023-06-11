require("competitest").setup {
  runner_ui = {
    interface = "split"
  },
  split_ui = {
    position = "right",
    relative_to_editor = true,
    total_width = 0.43,
    vertical_layout = {
      { 1, { { 1, "so" }, { 1, "eo" } } },
      { 1, { { 1, "si" }, { 1, "tc" } } },
      { 1, "se" },
    },
  },
  testcases_use_single_file = true
}

lvim.builtin.which_key.mappings["k"] = {
  name = "Competitive Test",
  r = { "<cmd>CompetiTestRun<cr>", "Run" },
  a = { "<cmd>CompetiTestAdd<cr>", "Add" },
  e = { "<cmd>CompetiTestEdit<cr>", "Edit" },
  d = { "<cmd>CompetiTestDelete<cr>", "Delete" },
  k = { "<cmd>CompetiTestRunNE<cr>", "Toggle UI" }
}

