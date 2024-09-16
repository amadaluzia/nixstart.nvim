local lsp_command = 'tsserver'

if vim.fn.executable(lsp_command) ~= 1 then
  return
end

local root_files = {
  'tsconfig.json',
  'package.json',
  'eslint.config.json',
  'yarn.lock',
  'node_modules',
  '.git',
}

vim.lsp.start {
  cmd = { lsp_command },
  name = 'typescript-language-server',
  root_dir = vim.fs.dirname(vim.fs.find(root_files, { upward = true })[1]),
  capabilities = require('user.lsp').make_client_capabilities(),
}
