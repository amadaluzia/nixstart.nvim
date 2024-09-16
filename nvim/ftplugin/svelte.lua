local lsp_command = 'svelteserver'

if vim.fn.executable(lsp_command) ~= 1 then
  return
end

local root_files = {
  'svelte.config.js',
  '.sveltekit',
  '.git',
}

vim.lsp.start {
  name = 'svelte-language-server',
  cmd = { lsp_command },
  root_dir = vim.fs.dirname(vim.fs.find(root_files, { upward = true })[1]),
  capabilities = require('user.lsp').make_client_capabilities(),
}
