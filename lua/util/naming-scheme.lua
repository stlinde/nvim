local M = {}
function M.file_with_date(directory)
	local fn = function()
		vim.ui.input({
			prompt = "Title: ",
		}, function(input)
			local title = string.gsub(string.lower(input), " ", "-")
			vim.cmd(":e " .. directory .. os.date("%Y%m%d%H%M--") .. title .. ".norg")
		end)
	end
	return fn
end

function M.file_with_date_type(directory, type)
	local fn = function()
		vim.ui.input({
			prompt = "Title: ",
		}, function(input)
			local title = string.gsub(string.lower(input), " ", "-")
			vim.api.nvim_set_current_dir(directory)
			vim.cmd(":e " .. os.date("%Y%m%d%H%M--") .. title .. "__" .. type .. ".norg")
		end)
	end
	return fn
end

return M
