--[[
Copyright (C) 2024 Kyren223
This file is licensed under the GPL-3.0-or-later license, see https://fsf.org/licenses/gpl-3.0
--]]

local utils = require("carbonight.utils")

---@class Colors
local M = {
    -- normal = { fg = '#EFEDE7', bg = '#09090F' },
    normal = { fg = "#EFEDE7", bg = "#1B1B1B" },
    visual = { bg = "#232143" },
    cursor_line = { bg = "#281E25" },
    violet = { fg = "#D484FF" },
    gray_underline = { underline = true, sp = "#909090" },
    unused = { fg = "#808080", undercurl = true, sp = "#808080", bold = true },
    comment = { fg = "#007215" },
    success = { fg = "#46d46c" },
    doc_comment = { fg = "#5D545F" },
    macro = { fg = "#DD6718" },
    string = { fg = "#F6D087" },
    keyword = { fg = "#F16265", nocombine = true },
    identifier = { fg = "#BB91F0" },
    variable = { fg = "#E6F0A8" },
    -- function_declaration = { fg = "#54D7A9" },
    -- function_call = { fg = "#51C6DC" },
    function_declaration = { fg = "#8DDEE0", bold = true, italic = true },
    function_call = { fg = "#8EDFF9", nocombine = true },
    label = { fg = "#20999D", italic = true },
    operator = { fg = "#54D7A9" },
    parentheses = { fg = "#F9FAF4" },
    -- type = { fg = "#51C6DC" },
    type = { fg = "#54D7A9", bold = true, italic = true },
    interface = { fg = "#54D7A9", nocombine = true },
    static_field = { fg = "#F8F8F2" },
    type_parameter = { fg = "#007E8A" },
    parameter = { fg = "#F5A670", },
    annotation = { fg = "#D9E577" },
    rust_macro = { fg = "#5874FF" },
    illuminate = { bg = "#534355" },
    git_modified = { fg = "#00f1f5", bold = true, italic = true },
    enum = { fg = "#D8C44B", nocombine = true },
    abstract = { fg = "#52E3F6", bold = true, italic = true },
    conflict_theirs = { bg = "#2A3E49" },
    conflict_ours = { bg = "#4a2b35" },
}

M.static_method = utils.override(M.normal, { bg = "NONE", italic = true })

return M
