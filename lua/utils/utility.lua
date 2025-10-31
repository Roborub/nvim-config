M = {}

M.normalize_path = function(path)
  return path:gsub("\\", "/")
end

return M
