--[[
Copyright (C) 2024 Kyren223
This file is licensed under the GPL-3.0-or-later license, see https://fsf.org/licenses/gpl-3.0
--]]

local utils = require("carbonight.utils")

---@type Colors
local c = utils.deep_copy(require("carbonight.colors.carbon"))

c.normal.bg = "#1E1E2E"
c.visual.bg = utils.blend("#3d59a1", 0.4)
c.cursor_line.bg = "#292e42"
c.illuminate.bg = "#3b4261"
c.comment.fg = "#565f89"

---@type Colors
return c
