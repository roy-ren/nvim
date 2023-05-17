local M = {}

M.import = function(opts)
	local name = opts

	local ok, module = pcall(require, name)

	if ok then
		print("加载模块 [" .. name .. "] 成功👏👏👏")
	else
		print("加载模块 [" .. name .. "] 失败❗️❗️❗️")
	end

	return module
end


return M
