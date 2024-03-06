local M = {}

local hard_background = {
	dark = {
		bg_dim = "#202125",
		bg0 = "#242629",
		bg1 = "#292B2F",
		bg2 = "#323439",
		bg3 = "#3B3E44",
		bg4 = "#44474E",
		bg5 = "#4F525A",
		bg_visual = "#2E2F2F",
		bg_red = "#493b40",
		bg_green = "#3f4841",
		bg_blue = "#384b55",
		bg_yellow = "#45443c",
	},
}

local base_palette = {
	dark = {
		fg = "#D9D8C0",
		fgdark = "#BEBE9D",
		red = "#CF6F67",
		redlight = "#C68884",
		orange = "#FDBC00",
		orangedull = "#BEAA6E",
		yellow = "#C2B11B",
		yellowlight = "#BCBD65",
		green = "#9AB157",
		green2 = "#5B9281",
		green3 = "#96B38F",
		pink1 = "#B04D4E",
		pinkdark = "#D3859B",
		pinklight = "#B97E8B",
		aqua = "#33B1A6",
		blue = "#338E9F",
		yellowgrey = "#6D6048",
		blue1 = "#80B29D",
		blue2 = "#305061",
		blue3 = "#44728A",
		blue4 = "#7D9196",
		blue5 = "#819EAD",
		blue6 = "#6593A3",
		purple = "#9EA1C6",
		purpledark = "#836AA3",
		grey0 = "#515147",
		grey1 = "#616154",
		grey2 = "#6F6F5F",
		grey3 = "#7D7D69",
		grey4 = "#8D8D74",
		grey5 = "#9A9A7E",
		grey6 = "#A59E87",
		grey7 = "#B1AB97",
		grey8 = "#BBB6A4",
		grey9 = "#C7C3B4",
		grey10 = "#D9D8C0",
		grey11 = "#DDDAD1",
		statusline1 = "#6EBB9F",
		statusline2 = "#D3B980",
		statusline3 = "#E65255",
		none = "NONE",
	},
}

---@class Palette
---@field bg_dim string
---@field bg0 string
---@field bg1 string
---@field bg2 string
---@field bg3 string
---@field bg4 string
---@field bg5 string
---@field bg_visual string
---@field bg_red string
---@field bg_green string
---@field bg_blue string
---@field bg_yellow string
---@field fg string
---@field fgdark string
---@field pink1 string
---@field purpledark string
---@field pinklight string
---@field orange string
---@field orangedull string
---@field yellow string
---@field yellowlight string
---@field red string
---@field redlight string
---@field green string
---@field green2 string
---@field green3 string
---@field aqua string
---@field pinkdark string
---@field blue string
---@field yellowgrey string
---@field blue1 string
---@field blue2 string
---@field blue3 string
---@field blue4 string
---@field blue5 string
---@field blue6 string
---@field purple string
---@field grey string
---@field grey0 string
---@field grey1 string
---@field grey2 string
---@field grey3 string
---@field grey4 string
---@field grey5 string
---@field grey6 string
---@field grey7 string
---@field grey8 string
---@field grey9 string
---@field grey10 string
---@field grey11 string
---@field statusline1 string
---@field statusline2 string
---@field statusline3 string
---@field none string

---Generates the colour palette based on the user's config
---@param options Config The package configuration table
---@param theme "light" | "dark" The user's background preference
---@return Palette
M.generate_palette = function(options, theme)
	local base = base_palette[theme]
	local background_palette

	background_palette = hard_background[theme]

	return vim.tbl_extend("force", base, background_palette)
end

return M
