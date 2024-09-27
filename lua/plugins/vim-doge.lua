return {
  -- Otros plugins...

  {
    "kkoomen/vim-doge",
    build = ":call doge#install()",
    config = function()
      -- Configuración opcional de vim-doge
      vim.g.doge_enable_mappings = 1 -- Habilita los atajos por defecto
      vim.g.doge_doc_standard_python = "google" -- Configurar estándar de docstrings para Python
    end,
  },
}
