--[[
Copyright (C) 2024 Kyren223
This file is licensed under the GPL-3.0-or-later license, see https://fsf.org/licenses/gpl-3.0
--]]

local utils = require("carbonight.utils")

local M = {}

function M.get(c)
    return {
        Normal = c.normal,
        CursorLine = c.cursor_line,
        Visual = c.visual,
        CursorLineNr = utils.override(c.violet, { bold = true }),
        LineNrAbove = c.violet,
        LineNrBelow = c.violet,
        LspInlayHint = c.label,
        Comment = {},
        StatusLine = c.normal,
        EndOfBuffer = { fg = "bg" },
        DiagnosticUnderlineError = { undercurl = true, sp = "#BC3F3C" },
        -- DiagnosticUnderlineError = { undercurl = true },
        -- DiagnosticUnderlineWarn = { bg = '#452138' },
        DiagnosticUnderlineHint = { underline = false },
        DiagnosticUnnecessary = { fg = "#808080", undercurl = true, sp = "#808080" },
        -- DiagnosticError = { fg = c.error },
        -- DiagnosticWarn = { fg = c.warning },
        -- DiagnosticInfo = { fg = c.info },
        -- DiagnosticHint = { fg = c.info },
    }
end

return M
