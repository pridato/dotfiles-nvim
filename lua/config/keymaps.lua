local keymap = vim.keymap.set
local silent = { silent = true }

local function create_venv()
  local venv_name = "venv" -- Puedes cambiar el nombre del entorno si lo deseas
  local command = string.format("python3 -m venv %s", venv_name)

  -- Ejecutar el comando para crear el entorno virtual
  vim.cmd(string.format("!%s", command))

  -- Mostrar notificación de éxito
  vim.notify("Entorno virtual creado: " .. venv_name, vim.log.levels.INFO, { title = "Crear Entorno Virtual" })
end

-- Función para abrir la terminal y mostrar opciones
local function terminal_menu()
  local choice = vim.fn.input("Selecciona un comando: [A]ctivar entorno, [R]un dev, [F]reeze, [T]erm: ")

  if choice:lower() == "f" then
    vim.cmd("ToggleTerm")
    vim.cmd("pip freeze > requirements.txt")
  elseif choice:lower() == "t" then
    vim.cmd("ToggleTerm")
  elseif choice:lower() == "a" then
    vim.cmd("ToggleTerm")
    vim.cmd("source venv/bin/activate") -- Cambia según tu sistema
    vim.notify("Entorno virtual activado.", vim.log.levels.INFO)
  elseif choice:lower() == "r" then
    vim.cmd("ToggleTerm")
    vim.cmd("npm run dev")
  else
    print("Saliendo del menú.")
  end
end

-- Asignar atajos de teclado
keymap("n", "<Leader>cv", create_venv, { silent = true, desc = "Crear Entorno Virtual" })
keymap("n", "<Leader>T", terminal_menu, { silent = true, desc = "Terminal" })
