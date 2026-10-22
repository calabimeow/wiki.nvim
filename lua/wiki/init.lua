local bg = "#202122"
local bg2 = "#303030"
local white = "#eaf8f2"
local blue = "#86d7ef"
local yellow = "#e4da7b"
local pink = "#e95885"
local purple = "#8787fb"
local green = "#b4de40"
local brown = "#949078"

local groups =
{
    Normal = {fg = white, bg = bg},
    Delimiter = {fg = white},
    Special = {fg = white},
    ModeMsg = {fg = green},
    Directory = {fg = blue},

    StatusLine = {fg = white, bg = bg2},

    CursorLine = {bg = bg2},
    Visual = {bg = bg2},

    Cursor = {fg = purple},
    TermCursor = {fg = purple},
    lCursor = {fg = purple},
    CursorLineNr = {fg = purple},

    Function = {fg = green},
    KeyWord = {fg = blue},
    Constant = {fg = purple},
    Identifier = {fg = green},
    String = {fg = yellow},
    Operator = {fg = pink},
    Comment = {fg = brown, italic = true},

    ["@keyword"] = {fg = blue},
    ["@operator"] = {fg = pink},
    ["@number"] = {fg = purple},
    ["@keyword.operator"] = {fg = pink},
    ["@type"] = {fg = green},
    ["@type.builtin"] = {fg = green},
    ["@variable"] = {fg = green},
    ["@contstant.builtin"] = {fg = green},
    ["@string.escape"] = {fg = purple},
    ["@keyword.import"] = {fg = brown},
    ["@keyword.directive"] = {fg = brown},
    ["@function.builtin"] = {fg = green},
}

for group, opts in pairs(groups) do
    vim.api.nvim_set_hl(0, group, opts)
end

vim.g.colors_name = "wiki"

