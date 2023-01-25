local status, _ = pcall(vim.cmd, 'colorscheme nightfly')

if not status then
  print('Colorscheme not found')
  return
end

-- Lua initialization file
vim.g.nightflyCursorColor = true

-- Lua initialization file
vim.g.nightflyItalics = true
