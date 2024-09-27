-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
--

local keymap = vim.keymap.set
local silent = { silent = true }

local function create_venv()
  local venv_name = "venv" -- Puedes cambiar el nombre del entorno si lo deseas
  local command = string.format("python3 -m venv %s", venv_name)
  vim.cmd(string.format("!%s", command))
  print("Entorno virtual creado: " .. venv_name)
end

-- Asignar atajo de teclado
keymap("n", "<Leader>cv", create_venv, silent)
