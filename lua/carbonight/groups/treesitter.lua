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
        ["@constant.builtin"] = c.keyword,
        ["@function.builtin"] = c.keyword,
        ["@constant.macro"] = c.macro,
        ["@keyword"] = c.keyword,
        ["@keyword.gitcommit"] = utils.override(c.keyword, { nocombine = false }),
        ["@string"] = c.string,
        ["@string.escape"] = c.identifier,
        ["@lsp.type.invalidEscapeSequence"] = { fg = "#FF434F" },
        ["@character"] = c.string,
        ["@number"] = c.identifier,
        ["@float"] = c.identifier,
        ["@boolean"] = c.keyword,
        ["@function"] = c.function_declaration,
        ["@function.call"] = c.function_call,
        ["@function.method.call"] = c.function_call,
        ["@label"] = c.label,
        ["@punctuation.bracket"] = c.parentheses,
        ["@punctuation.delimiter"] = { fg = "#F19B95" }, -- { fg = '#F16265' } for semicolon
        ["@operator"] = c.operator,
        ["@type"] = c.type,
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
        ["@lsp.type.method"] = {},
        ["@lsp.type.keywordLiteral"] = c.keyword,
        ["@lsp.type.variable"] = {},
        ["@lsp.type.type"] = {},
        ["@lsp.type.comment"] = {},

        -- NOTE: Rust
        -- ['@variable.rust'] = c.identifier,
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
        ["@lsp.type.function.go"] = {},
        ["@lsp.type.string.go"] = {},
        ["@lsp.type.type.go"] = {},
        ["@lsp.type.variable.go"] = {},
        ["@lsp.mod.readonly.go"] = "@constant",
        ["@lsp.typemod.variable.defaultLibrary.go"] = "@constant.builtin",
        ["@lsp.typemod.type.defaultLibrary.go"] = "@type.builtin",

        -- NOTE: Java
        ["@lsp.type.modifier.java"] = c.keyword,
        ["@variable.builtin.java"] = c.keyword,
        ["@lsp.type.enum.java"] = c.enum,
        ["@lsp.typemod.enumMember.public.java"] = c.type,
        ["@lsp.typemod.enumMember.readonly.java"] = c.type,
        ["@lsp.typemod.enumMember.staitc.java"] = c.type,
        ["@lsp.typemod.property.declaration.java"] = c.type,
        ["@lsp.typemod.property.public.java"] = c.type,
        ["@lsp.typemod.property.readonly.java"] = c.type,
        ["@lsp.typemod.property.static.java"] = c.type,
        ["@lsp.typemod.class.abstract.java"] = c.abstract,
        ["@lsp.typemod.class.constructor.java"] = utils.override(c.function_call, { bold = true, italic = true }),
        ["@lsp.typemod.enum.public.java"] = c.enum,
        ["@lsp.typemod.enum.readonly.java"] = c.enum,
        ["@lsp.typemod.enum.static.java"] = c.enum,
        ["@lsp.type.parameter.java"] = { fg = "#D9AD69", italic = true },

        -- NOTE: zig
        ["@lsp.type.string.zig"] = {},

        -- NOTE: C/C++
        ["@lsp.type.comment.cpp"] = c.doc_comment, -- unused conditional code
        ["@lsp.type.enumMember.cpp"] = c.enum,
        ["@lsp.type.enumMember.c"] = c.enum,

        -- NOTE: comments
        ["@comment.todo"] = { fg = c.function_call.fg, bold = true },
        ["@comment.note"] = { fg = c.success.fg, bold = true },
        ["@comment.warning"] = { fg = c.annotation.fg, bold = true },
        ["@comment.error"] = { fg = c.keyword.fg, bold = true },
        ["@comment.perf"] = { fg = c.identifier.fg, bold = true },
    }
end

return M
