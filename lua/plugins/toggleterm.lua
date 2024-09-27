return {
  "akinsho/toggleterm.nvim",
  config = function()
    require("toggleterm").setup({
      size = 10, -- Tamaño de la terminal
      open_mapping = [[<c-\>]], -- Atajo para abrir/cerrar la terminal
      shade_terminals = true, -- Sombras en la terminal para mejor visibilidad
      start_in_insert = true, -- Iniciar en modo Insert cuando se abre
      direction = "horizontal", -- Dirección horizontal (puede ser vertical o flotante)
      persist_size = true, -- Mantiene el tamaño entre usos
      close_on_exit = true, -- Cerrar la terminal cuando el proceso finaliza
      shell = vim.o.shell, -- Shell por defecto del sistema
    })
  end,
}
