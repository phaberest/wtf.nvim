local ai = require("wtf.ai")
local search = require("wtf.search")

local M = {}

local default_opts = {
	openai_api_key = nil,
	openai_model_id = "gpt-3.5-turbo",
	language = "english",
	default_search_engine = "google",
	additional_instructions = nil,
}

function M.setup(opts)
	-- Merge default_opts with opts
	opts = vim.tbl_deep_extend("force", default_opts, opts or {})
	vim.g.wtf_openai_api_key = opts.openai_api_key
	vim.g.wtf_openai_model_id = opts.openai_model_id
	vim.g.wtf_language = opts.language
	vim.g.wtf_default_search_engine = opts.default_search_engine
	vim.g.wtf_default_additional_instructions = opts.additional_instructions
end

function M.ai(additional_instructions)
	ai(additional_instructions)
end

function M.search(opts)
	search(opts)
end

return M
