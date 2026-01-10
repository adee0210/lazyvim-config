-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>cqv", function()
  local root_file = vim.fn.findfile("requirements.txt", ".;")
  local root = root_file ~= "" and vim.fn.fnamemodify(root_file, ":h") or vim.fn.getcwd()

  local cmd = table.concat({
    "cd " .. root,
    "python3 -m venv .venv || true",
    ".venv/bin/python -m pip install --upgrade pip",
    "[ -f requirements.txt ] && .venv/bin/python -m pip install -r requirements.txt || echo 'No requirements.txt'",
  }, " && ")

  vim.cmd("terminal " .. cmd)
end, { desc = "Create .venv + install requirements (show output)" })
