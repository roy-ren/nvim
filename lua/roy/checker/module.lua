local M = {}

local fetch_string = function(opts)
	if ('string' == type(opts)) then
		return opts
	else
		return ""
	end
end

M.import = function(opts)
	local name = ""
	local check = false

	if ('table' == type(opts)) then
		name = fetch_string(opts[1])
		check = opts.check
	else
		name = fetch_string(opts)
	end

	if (0 == string.len(name)) then
		return
	end

	local ok, module = pcall(require, name)

	if not check then
		return module
	end

	if ok then
		print("加载模块 [" .. name .. "] 成功👏👏👏")
	else
		print("加载模块 [" .. name .. "] 失败❗️❗️❗️")
	end

	return module
end

return M

