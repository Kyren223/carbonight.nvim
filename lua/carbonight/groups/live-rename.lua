--[[
Copyright (C) 2024 Kyren223
This file is licensed under the GPL-3.0-or-later license, see https://fsf.org/licenses/gpl-3.0
--]]

local M = {}

---@param c Colors
function M.get(c)
    return {
        LiveRenameCurrent = { bg = "#66313F" },
        LiveRenameOthers = { bg = "#2D543F" },
    }
end

return M
