--[[
Copyright (C) 2025 Kyren223
This file is licensed under the GPL-3.0-or-later license, see https://fsf.org/licenses/gpl-3.0
--]]

local M = {}

---@param c Colors
function M.get(c)
    return {
        ConflictTheirs = c.conflict_theirs,
        ConflictOurs = c.conflict_ours,
    }
end

return M
