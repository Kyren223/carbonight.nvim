--[[
Copyright (C) 2024 Kyren223
This file is licensed under the GPL-3.0-or-later license, see https://fsf.org/licenses/gpl-3.0
--]]

local M = {}

function M.get(c)
    return {
        NeogitDiffAddHighlight = { fg = "#859900" },
        NeogitDiffDeleteHighlight = { fg = "#dc322f" },
        NeogitDiffContextHighlight = { fg = "#b2b2b2" },
        NeogitHunkHeader = { fg = "#cccccc" },
        NeogitHunkHeaderHighlight = { fg = "#cccccc" },
    }
end

return M
