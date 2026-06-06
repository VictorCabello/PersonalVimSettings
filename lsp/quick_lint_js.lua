return {
  cmd = { 'quick-lint-js', '--lsp-server' },
  filetypes = { 'javascript', 'typescript' },
  root_markers = { 'package.json', 'jsconfig.json', '.git' },
  single_file_support = true,
}
