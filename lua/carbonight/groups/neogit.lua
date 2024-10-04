--[[
Copyright (C) 2024 Kyren223
This file is licensed under the GPL-3.0-or-later license, see https://fsf.org/licenses/gpl-3.0
--]]

local M = {}

-- https://github.com/TimUntersberger/neogit
---@param c Colors
function M.get(c)
    return {
        NeogitDiffContextHighlight = { fg = "#b2b2b2" },
        NeogitHunkHeaderHighlight = { fg = "#cccccc" },
        NeogitHunkHeader = { fg = "#cccccc" },
        NeogitBranch = { fg = c.success.fg, bold = true },
        NeogitRemote = { fg = c.keyword.fg, bold = true },
        NeogitBranchHead = { fg = c.keyword.fg, bold = true },
        NeogitPopupSwitchEnabled = { fg = c.macro.fg, bold = true },
        NeogitChangeModified = c.git_modified,
        NeogitChangeNewFile = { fg = c.success.fg, bold = true, italic = true },
        NeogitChangeDeleted = { fg = c.keyword.fg, bold = true, italic = true },
        NeogitChangeRenamed = { fg = c.macro.fg, bold = true, italic = true },
    }
end

return M
