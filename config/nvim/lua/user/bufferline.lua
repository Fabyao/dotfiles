local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
	return
end

bufferline.setup({
	options = {
		offsets = {
			{
				filetype = "NvimTree",
				text = "Explorer",
				highlight = "Directory",
				text_align = "left",
			},
		},
		show_close_icon = false,
		separator_style = "padded_slant", --"slant or padded_slant",
		max_name_length = 200,
	},
})
