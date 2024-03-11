local M = {}

local hard_background = {
	dark = {
		bg_dim = "#1E2024",
		bg0 = "#222327",
		bg1 = "#292A2F",
		bg2 = "#303137",
		bg3 = "#383940",
		bg4 = "#3F4148",
		bg5 = "#494B53",
		bg_visual = "#31475E",
		bg_red = "#5E4141",
		bg_violet = "#795578",
		bg_green = "#3f4841",
		bg_blue = "#384b55",
		bg_yellow = "#45443c",
	},
}

local base_palette = {
	dark = {
		fg = "#C7C3B4",
		fgdark = "#BEBE9D",
		pink1 = "#CF6F67",
		pinkdark = "#B57091",
		pinklight = "#B97E8B",
		orange = "#D7A926",
		orangedull = "#BEAA6E",
		yellow = "#C2B11B",
		yellowlight = "#BCBD65",
		green = "#9AB157",
		green2 = "#5B9281",
		green3 = "#96B38F",
		red = "#BC6667",
		redlight = "#C88682",
		aqua = "#33B1A6",
		blue = "#338E9F",
		yellowgrey = "#6D6048",
		blue1 = "#7D999A",
		blue2 = "#305061",
		blue3 = "#44728A",
		blue4 = "#3A5A6A",
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
		grey7 = "#B1AB96",
		grey8 = "#BDB8A6",
		grey9 = "#CAC6B7",
		grey10 = "#D5D3B9",
		grey11 = "#DDDBC6",
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
---@field bg_violet string
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
