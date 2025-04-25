--[[
Copyright (C) 2024 Kyren223
This file is licensed under the GPL-3.0-or-later license, see https://fsf.org/licenses/gpl-3.0
--]]

local M = {}

---@param opts? carbonight.Config
function M.setup(opts)
    if not opts or not opts.style then
        return require("carbonight.colors.carbon") -- fallback
    end

    if type(opts.style) ~= "string" then
        vim.notify("Style must be a string!", vim.log.levels.ERROR, { title = "Carbonight" })
        return require("carbonight.colors.carbon") -- fallback
    end

    local ok, colors = pcall(require, "carbonight.colors." .. opts.style)
    if not ok then
        vim.notify(
            'Style "' .. opts.style .. '" not found, unable to load colorscheme!',
            vim.log.levels.ERROR,
            { title = "Carbonight" }
        )
        return require("carbonight.colors.carbon") -- fallback
    end

    return colors
end

return M
