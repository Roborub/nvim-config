vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = "*.xaml",
  command = "set filetype=xml",
})

vim.api.nvim_create_autocmd("BufEnter", {
  callback = function()
    local buf = vim.api.nvim_get_current_buf()
    local name = vim.api.nvim_buf_get_name(buf)
    local buftype = vim.api.nvim_get_option_value("buftype", { buf = buf })

    if name ~= "" and buftype == "" then
      vim.cmd("lcd " .. vim.fn.fnamemodify(name, ":h"))
    end
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "copilot-chat",
  callback = function()
    vim.defer_fn(function()
      vim.cmd("resize 10")
    end, 50)
  end
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.wo.conceallevel = 2
  end,
})
