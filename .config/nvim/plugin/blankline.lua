local blankline = require("indent_blankline")
vim.opt.list = true
vim.opt.listchars:append "space:⋅"

blankline.setup {
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
}
