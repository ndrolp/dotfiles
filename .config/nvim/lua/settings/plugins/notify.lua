local ok, ntfy = pcall(require, "notify")
if not ok then
  return
end
ntfy.setup({
  background_colour = "#000",
  top_down = true,
  fps = 60,
})
if not Old_print then
  Old_print = _G.print
end

---@diagnostic disable-next-line: duplicate-set-field
vim.notify = function(msg, level, opts)
  Old_print(tostring(level) .. ": " .. msg .. " : " .. vim.inspect(opts))
  ntfy(msg, level, opts)
end
print = function(...)
  local print_safe_args = {}
  local _ = { ... }
  for i = 1, #_ do
    table.insert(print_safe_args, tostring(_[i]))
  end
  vim.notify(table.concat(print_safe_args, " "), "info")
end
