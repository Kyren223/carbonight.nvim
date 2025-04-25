--[[
Copyright (C) 2024 Kyren223
This file is licensed under the GPL-3.0-or-later license, see https://fsf.org/licenses/gpl-3.0
--]]

local config = require("carbonight.config")

local M = {}

---@param opts? carbonight.Config
function M.load(opts)
    opts = require("carbonight.config").extend(opts)

    local colors = require("carbonight.colors").setup(opts)
    local groups = require("carbonight.groups").setup(colors, opts)

    -- Only needed to clear when not the default colorscheme
    if vim.g.colors_name then
        vim.cmd("hi clear")
    end

    vim.o.termguicolors = true
    vim.g.colors_name = "carbonight-" .. opts.style

    for group, hl in pairs(groups) do
        hl = type(hl) == "string" and { link = hl } or hl
        vim.api.nvim_set_hl(0, group, hl)
    end

    return colors, groups, opts
end

M.setup = config.setup

return M
