--[[
Copyright (C) 2024 Kyren223
This file is licensed under the GPL-3.0-or-later license, see https://fsf.org/licenses/gpl-3.0
--]]

local utils = require("carbonight.utils")

local M = {}

---@param style? string
function M.get(style)
    local c = require("carbonight.colors").setup({
        style = style,
    })

    local hl = {}

    hl.normal = {
        a = { bg = c.function_call.fg, fg = c.normal.bg, gui = "bold" },
        b = { bg = c.conflict_ours_marker.bg, fg = c.function_call.fg },
        c = { bg = utils.blend(c.normal.bg, 0.8, c.visual.bg), fg = c.normal.fg },
    }

    hl.insert = {
        a = { bg = c.success.fg, fg = c.normal.bg, gui = "bold" },
    }

    hl.command = {
        a = { bg = c.parameter.fg, fg = c.normal.bg, gui = "bold" },
    }

    hl.visual = {
        a = { bg = c.identifier.fg, fg = c.normal.bg, gui = "bold" },
    }

    hl.replace = {
        a = { bg = c.keyword.fg, fg = c.normal.bg, gui = "bold" },
    }

    hl.terminal = {
        a = { bg = c.operator.fg, fg = c.normal.bg, gui = "bold" },
    }

    -- TODO: remove this in the future
    -- Uses very BOLD colors so it's very obvious if I see it
    hl.inactive = {
        a = { bg = c.macro.fg, fg = c.comment.bg },
        b = { bg = c.macro.fg, fg = c.comment.bg },
        c = { bg = c.macro.fg, fg = c.comment.bg },
    }

    return hl
end

return M
