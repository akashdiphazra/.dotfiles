local status, competitest = pcall(require, "competitest")
if (not status) then return end

competitest.setup {
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
