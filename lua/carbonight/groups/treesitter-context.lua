--[[
Copyright (C) 2024 Kyren223
This file is licensed under the GPL-3.0-or-later license, see https://fsf.org/licenses/gpl-3.0
--]]

local utils = require("carbonight.utils")

local M = {}

-- https://github.com/nvim-treesitter/nvim-treesitter-context
---@param c Colors
function M.get(c)
    return {
        TreesitterContext = { bg = utils.blend(c.illuminate.bg, 0.8) },
    }
end

return M
