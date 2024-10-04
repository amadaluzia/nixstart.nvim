if vim.g.did_load_colours_plugin then
  return
end
vim.g.did_load_colours_plugin = true

vim.opt.background = "dark" -- set this to dark or light
vim.cmd.colorscheme("oxocarbon")
