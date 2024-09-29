--[[
Copyright (C) 2024 Kyren223
This file is licensed under the GPL-3.0-or-later license, see https://fsf.org/licenses/gpl-3.0
--]]

local M = {}

function M.load(style)
    local colors
    if style ~= nil then
        if not type(style) == "string" then
            Notify("Style must be a string!", "Carbonight", vim.log.levels.ERROR)
            return
        end

        local ok, result = pcall(require, "carbonight.colors." .. style)
        if not ok then
            Notify('Style "' .. style .. '" not found, unable to load colorscheme!', "Carbonight", vim.log.levels.ERROR)
            return
        end
        colors = result
    else
        colors = require("carbonight.colors")
    end

    local highlights = require("carbonight.groups").setup(colors)

    for group, args in pairs(highlights) do
        vim.api.nvim_set_hl(0, group, args)
    end
end

return M
