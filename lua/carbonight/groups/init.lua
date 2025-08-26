--[[
Copyright (C) 2024 Kyren223
This file is licensed under the GPL-3.0-or-later license, see https://fsf.org/licenses/gpl-3.0
--]]

local M = {}

local groups = {
    "base",
    "treesitter",
    "treesitter-context",
    "vim-illuminate",
    "nvim-cmp",
    "neogit",
    "ghostty",
    "conflict-marker",
}

---@param colors? Colors
---@param opts? carbonight.Config
function M.setup(colors, opts)
    local highlights = {}
    for _, v in ipairs(groups) do
        local group = require("carbonight.groups." .. v).get(colors, opts)
        highlights = vim.tbl_deep_extend("error", highlights, group)
    end
    return highlights
end

return M
