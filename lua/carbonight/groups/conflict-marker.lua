--[[
Copyright (C) 2025 Kyren223
This file is licensed under the GPL-3.0-or-later license, see https://fsf.org/licenses/gpl-3.0
--]]

local M = {}

---@param c Colors
function M.get(c)
    return {
        ConflictOursMarker = c.conflict_ours_marker,
        ConflictOurs = c.conflict_ours,

        ConflictBaseMarker = c.conflict_base_marker,
        ConflictBase = c.conflict_base,

        ConflictMid = c.conflict_base_marker,

        ConflictTheirs = c.conflict_theirs_marker,
        ConflictTheirsMarker = c.conflict_theirs,
    }
end

return M
