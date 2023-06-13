local status, indent_blankline = pcall(require, "indent_blankline")
if (not status) then return end

indent_blankline.setup {
    char = "┊",
    context_char = "|",
    show_current_context = false,
    show_current_context_start = false,
    space_char_blankline = " ",
}
