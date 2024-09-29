local M = {}

---@param original table original highlight group
---@param extension table highlight group to extend the original with
---@return table new the result of extending the original with the extension
function M.override(original, extension)
	return vim.tbl_extend("force", {}, original, extension)
end

---@param c string hex color code
---@return number color color as RGB number
function M.rgb(c)
	c = string.lower(c)
	return { tonumber(c:sub(2, 3), 16), tonumber(c:sub(4, 5), 16), tonumber(c:sub(6, 7), 16) }
end

---@param foreground string foreground color
---@param background string|nil background color
---@param alpha number|string number between 0 and 1. 0 results in bg, 1 results in fg
function M.blend(foreground, alpha, background)
	local bg = background or "#000000"
	alpha = type(alpha) == "string" and (tonumber(alpha, 16) / 0xff) or alpha
	local bg = M.rgb(bg)
	local fg = M.rgb(foreground)

	local blendChannel = function(i)
		local ret = (alpha * fg[i] + ((1 - alpha) * bg[i]))
		return math.floor(math.min(math.max(0, ret), 255) + 0.5)
	end

	return string.format("#%02x%02x%02x", blendChannel(1), blendChannel(2), blendChannel(3))
end

---@param original table table to copy
---@return table new new table
function M.deep_copy(original)
	if type(original) ~= "table" then
		return original
	end

	local new = {}
	for k, v in pairs(original) do
		new[M.deep_copy(k)] = M.deep_copy(v)
	end
	return new
end

return M
