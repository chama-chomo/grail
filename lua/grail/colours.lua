local M = {}

local hard_background = {
  dark = {
    bg_dim = "#191E20",
    bg0 = "#191E20",
    bg1 = "#21272A",
    bg2 = "#282F32",
    bg3 = "#30383C",
    bg4 = "#394247",
    bg5 = "#3F494E",
    bg_visual = "#282f35",
    bg_red = "#493b40",
    bg_green = "#3f4841",
    bg_blue = "#384b55",
    bg_yellow = "#45443c",
  },
}

local base_palette = {
  dark = {
    fg = "#B4B5A7",
    fgdark = "#B19565",
    pink1 = "#B04D4E",
    red = "#DF5B51",
    orange = "#B17B1E",
    yellow = "#C4B64F",
    yellowlight = "#C0BF45",
    green = "#85995E",
    green2 = "#3C6055",
    green3 = "#96B38F",
    pinkdark = "#B29A69",
    pinklight = "#E65154",
    aqua = "#33B1A6",
    blue = "#338E9F",
    blue2 = "#295972",
    blue3 = "#44728A",
    blue4 = "#628B96",
    blue5 = "#819EAD",
    purple = "#7075B2",
    purpledark = "#836AA3",
    grey = "#4F5045",
    grey0 = "#616255",
    grey1 = "#6C6D5F",
    grey2 = "#797A6A",
    grey3 = "#828372",
    grey4 = "#8B8C7A",
    grey5 = "#979985",
    grey6 = "#A0A28D",
    grey7 = "#A7A993",
    grey8 = "#B0B29B",
    grey9 = "#BABCA4",
    grey10 = "#C5C7AD",
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
---@field yellow string
---@field yellowlight string
---@field red string
---@field green string
---@field green2 string
---@field green3 string
---@field aqua string
---@field pinkdark string
---@field blue string
---@field blue2 string
---@field blue3 string
---@field blue4 string
---@field blue5 string
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
