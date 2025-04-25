--[[
Copyright (C) 2024 Kyren223
This file is licensed under the GPL-3.0-or-later license, see https://fsf.org/licenses/gpl-3.0
--]]

local M = {}

---@class carbonight.Config
M.defaults = {
    style = "carbon", -- Theme variation, "carbon" or "tokyo"
}

---@type carbonight.Config
M.options = nil

---@param options? carbonight.Config
function M.setup(options)
    M.options = vim.tbl_deep_extend("force", {}, M.defaults, options or {})
end

---@param opts? carbonight.Config
function M.extend(opts)
    return opts and vim.tbl_deep_extend("force", {}, M.options, opts) or M.options
end

setmetatable(M, {
    __index = function(_, k)
        if k == "options" then
            return M.defaults
        end
    end,
})

return M
