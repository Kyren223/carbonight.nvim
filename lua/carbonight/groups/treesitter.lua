--[[
Copyright (C) 2024 Kyren223
This file is licensed under the GPL-3.0-or-later license, see https://fsf.org/licenses/gpl-3.0
--]]

local utils = require("carbonight.utils")

local M = {}

---@param c Colors
function M.get(c)
    return {
        ["@comment"] = c.comment,
        ["@variable"] = c.variable,
        ["@variable.parameter"] = c.parameter,
        ["@constant"] = c.identifier,
        ["@constant.macro"] = c.macro,
        ["@keyword"] = c.keyword,
        ["@string"] = c.string,
        ["@string.escape"] = c.identifier,
        ["@lsp.type.invalidEscapeSequence"] = { fg = "#FF434F" },
        ["@character"] = c.string,
        ["@number"] = c.identifier,
        ["@float"] = c.identifier,
        ["@boolean"] = c.keyword,
        ["@function"] = c.function_declaration,
        ["@function.call"] = c.function_call,
        ["@label"] = c.label,
        ["@punctuation.bracket"] = c.parentheses,
        ["@punctuation.delimiter"] = { fg = "#F19B95" }, -- { fg = '#F16265' } for semicolon
        ["@operator"] = c.operator,
        ["@type"] = c.class,
        ["@type.builtin"] = c.keyword,
        ["@module"] = c.identifier,
        ["@lsp.mod.static"] = c.static_method,
        ["@lsp.type.enumMember"] = c.static_field,
        ["@lsp.type.typeParameter"] = c.type_parameter,
        ["@lsp.type.formatSpecifier"] = c.identifier,
        ["@lsp.typemod.parameter.mutable"] = utils.override(c.parameter, c.gray_underline),
        ["@lsp.type.constParameter"] = c.identifier,
        ["@lsp.type.interface"] = c.interface,
        ["@lsp.typemod.static.mutable"] = utils.override(c.normal, c.gray_underline),
        ["@lsp.typemod.variable.mutable"] = c.gray_underline,
        ["@lsp.type.unresolvedReference"] = { fg = "#BC3F3C", nocombine = true },
        ["@attribute"] = c.annotation,
        ["@lsp.typemod.comment.documentation"] = c.doc_comment,

        -- NOTE: Rust
        ['@variable.rust'] = c.identifier,
        ["@lsp.mod.attribute.rust"] = c.rust_macro,
        ["@lsp.typemod.string.attribute.rust"] = c.string,
        ["@lsp.type.lifetime.rust"] = c.label,
        ["@lsp.typemod.macro.declaration.rust"] = utils.override(c.normal, { bg = "NONE" }),
        ["@lsp.type.selfTypeKeyword.rust"] = c.keyword,
        ["@lsp.type.selfKeyword.rust"] = c.keyword,
        ["@lsp.type.property.rust"] = c.static_field,
        -- ['@lsp.mod.associated.rust'] = l.associated_function,
        -- ['@lsp.typemod.function.unsafe.rust'] = { bg = '#5E2828' },

        -- NOTE: Lua
        ["@lsp.type.property.lua"] = { fg = "#F5A670" },
        ["@comment.documentation.lua"] = c.doc_comment,
        ["@lsp.type.comment.lua"] = {},

        -- NOTE: Go
        ["@lsp.type.type.go"] = {},
        ["@lsp.type.function.go"] = {},
        ["@lsp.type.string.go"] = {},
        ['@lsp.type.formatSpecifier.go'] = c.identifier, -- custom
    }
end

return M
