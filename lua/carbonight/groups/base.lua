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

		-- NOTE: Diagnostics
		DiagnosticUnderlineError = { undercurl = true, sp = "#BC3F3C" },
		-- DiagnosticUnderlineError = { undercurl = true },
		-- DiagnosticUnderlineWarn = { bg = '#452138' },
		DiagnosticUnderlineHint = { underline = false },
		DiagnosticUnnecessary = { fg = "#808080", undercurl = true, sp = "#808080" },
		-- DiagnosticError = { fg = c.error },
		-- DiagnosticWarn = { fg = c.warning },
		-- DiagnosticInfo = { fg = c.info },
		-- DiagnosticHint = { fg = c.info },

		-- NOTE: Tressitter
		["@comment"] = c.comment,
		["@variable"] = c.identifier,
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
		["@lsp.typemod.parameter.mutable"] = utils.override(c.normal, c.gray_underline),
		["@lsp.type.constParameter"] = c.identifier,
		["@lsp.type.interface"] = c.interface,
		["@lsp.typemod.static.mutable"] = utils.override(c.normal, c.gray_underline),
		["@lsp.typemod.variable.mutable"] = c.gray_underline,
		["@lsp.type.unresolvedReference"] = { fg = "#BC3F3C", nocombine = true },
		["@attribute"] = c.annotation,
		["@lsp.typemod.comment.documentation"] = c.doc_comment,

		-- NOTE: Rust
		["@lsp.mod.attribute.rust"] = c.rust_macro,
		["@lsp.typemod.string.attribute.rust"] = c.string,
		["@lsp.type.lifetime.rust"] = c.label,
		["@lsp.typemod.macro.declaration.rust"] = utils.override(c.normal, { bg = transparent }),
		["@lsp.type.selfTypeKeyword.rust"] = c.keyword,
		["@lsp.type.selfKeyword.rust"] = c.keyword,
		-- ['@lsp.mod.associated.rust'] = l.associated_function,
		-- ['@lsp.typemod.function.unsafe.rust'] = { bg = '#5E2828' },

		-- NOTE: Lua
		["@lsp.type.property.lua"] = { fg = "#F5A670" },
		["@comment.documentation.lua"] = c.doc_comment,
		["@lsp.type.comment.lua"] = {},

		-- NOTE: vim-illuminate
		IlluminatedWordText = c.illuminate,
		IlluminatedWordRead = c.illuminate,
		IlluminatedWordWrite = c.illuminate,

		-- NOTE: Neogit
		NeogitDiffAddHighlight = { fg = "#859900" },
		NeogitDiffDeleteHighlight = { fg = "#dc322f" },
		NeogitDiffContextHighlight = { fg = "#b2b2b2" },
		NeogitHunkHeader = { fg = "#cccccc" },
		NeogitHunkHeaderHighlight = { fg = "#cccccc" },

		-- NOTE: nvim-cmp
		-- CmpItemAbbr = { fg = c.normal },
		-- CmpDocumentationBorder = { fg = c.border },
		-- CmpItemAbbrMatch = { fg = c.normal, bold = true },
		-- CmpItemAbbrMatchFuzzy = { fg = c.normal, bold = true, underline = true },
		-- CmpItemAbbrDeprecated = { fg = c.normal, bold = true },
		-- CmpItemKindVariable = { fg = c.var_name, bold = true },
		-- CmpItemKindInterface = { fg = c.type_name, bold = true },
		-- CmpItemKindText = { fg = c.normal, bold = true },
		-- CmpItemKindFunction = { fg = c.func_name, bold = true },
		-- CmpItemKindMethod = { fg = c.func_name, bold = true },
		-- CmpItemKindKeyword = { fg = c.built_in, bold = true },
		-- CmpItemKindProperty = { fg = c.key, bold = true },
		-- CmpItemKindUnit = { fg = c.yellow, bold = true },
		-- CmpItemKindCopilt = { fg = c.green, bold = true },
		-- CmpBorderedWindow_FloatBorder = { fg = c.border },
	}
end

return M
