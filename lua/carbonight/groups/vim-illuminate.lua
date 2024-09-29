--[[
Copyright (C) 2024 Kyren223
This file is licensed under the GPL-3.0-or-later license, see https://fsf.org/licenses/gpl-3.0
--]]

local M = {}

function M.get(c)
    return {
        IlluminatedWordText = c.illuminate,
        IlluminatedWordRead = c.illuminate,
        IlluminatedWordWrite = c.illuminate,
    }
end

return M
