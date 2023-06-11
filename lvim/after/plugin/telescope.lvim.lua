lvim.builtin.telescope = {
  defaults = {
    prompt_prefix = "🔍 ",
    layout_strategy = "horizontal",
    layout_config = {
      horizontal = {
        prompt_position = 'bottom',
        width = 0.88,
        height = 27,
        preview_width = 0.50,
        preview_cutoff = 130,
      },
    },
  },
  pickers = {
    find_files = {
      layout_strategy = "center",
      layout_config = { width = 0.60, height = 0.35, preview_width = nil, prompt_position = "top" }
    }
  },
}
