-- Treesitter ya es parte del core pero no tiene forma aun de istalar parsers
-- agrego esto solo para instalar parsers
--



-- 1. Registrar e instalar el plugin pasando el repositorio directamente como string
--

vim.pack.add({
  { src = 'https://github.com/nvim-treesitter/nvim-treesitter' },
})

-- 2. Invocar la descarga automática de los parsers nativos de la comunidad
require("nvim-treesitter").install({
"css",
"html",
"javascript",
"latex",
"markdown",
"markdown_inline",
"scss",
"svelte",
"tsx",
"typst",
"vue"
})
