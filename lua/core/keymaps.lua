vim.api.nvim_set_keymap('i', '<C-Tab>', '<Plug>(emmet-expand-abbr)', { silent = true })
vim.api.nvim_set_keymap('n', '<Leader><Tab>', '<Plug>(emmet-expand-abbr)', { silent = true })

-- files
vim.keymap.set("n", "<leader>fa", "<cmd>Telescope live_grep<cr>", { desc = "live grep (find file content)" })

vim.keymap.set("n", "<leader>fb", function()
  local path = vim.fn.expand("%:p:h")
  local escaped = vim.fn.expand(vim.fn.escape(path, "$?*[]()"))

  require("telescope").extensions.file_browser.file_browser({
    cwd = escaped,
  })
end, { desc = "toggle file browser" })

vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "find files" })
vim.keymap.set("n", "<leader>lf", "<cmd>e #<cr>", { desc = "switch to previous file" })
vim.keymap.set("n", "<leader>of", "<cmd>Telescope oldfiles<cr>", { desc = "view previous files" })
vim.keymap.set("n", "<leader>S", "<cmd>source $MYVIMRC<cr>>", { desc = "Save config" })

-- lsp
vim.keymap.set("n", "<leader>Ld", vim.lsp.buf.definition, { desc = "LSP: Go to definition" })
vim.keymap.set("n", "<leader>LD", vim.lsp.buf.declaration, { desc = "LSP: Go to declaration" })
vim.keymap.set("n", "<leader>Li", vim.lsp.buf.implementation, { desc = "LSP: Go to implementation" })
vim.keymap.set("n", "<leader>Lt", vim.lsp.buf.type_definition, { desc = "LSP: Go to type definition" })
vim.keymap.set("n", "<leader>Lr", vim.lsp.buf.references, { desc = "LSP: Find references" })
vim.keymap.set("n", "<leader>LH", vim.lsp.buf.hover, { desc = "LSP: Hover docs" })
vim.keymap.set("n", "<leader>Lc", function() vim.lsp.buf.add_workspace_folder(vim.fn.getcwd()) end,
  { desc = "LSP: Add Workspace Folder" })

vim.keymap.set("n", "<leader>Ls", vim.lsp.buf.signature_help, { desc = "LSP: Signature help" })

vim.keymap.set("n", "<leader>LR", vim.lsp.buf.rename, { desc = "LSP: Rename symbol" })
vim.keymap.set("n", "<leader>La", vim.lsp.buf.code_action, { desc = "LSP: Code action" })
vim.keymap.set("n", "<leader>Lf", function() vim.lsp.buf.format({ async = true }) end, { desc = "LSP: Format document" })
vim.keymap.set("n", "<leader>Le", vim.diagnostic.open_float, { desc = "LSP: Show diagnostics" })
vim.keymap.set("n", "<leader>Ln", vim.diagnostic.goto_next, { desc = "LSP: Next diagnostic" })
vim.keymap.set("n", "<leader>LP", vim.diagnostic.goto_prev, { desc = "LSP: Previous diagnostic" })

-- misc
vim.keymap.set("n", "<leader>fd", function() vim.lsp.buf.format({ async = true }) end, { desc = "format document" })
vim.keymap.set("n", "<leader><esc>", ":nohlsearch<cr>", { desc = "clear search highlight" })
vim.keymap.set("n", "<leader>ec", "<cmd>edit $myvimrc<cr>", { desc = "edit config" })
vim.keymap.set("n", "<leader>km", "<cmd>map <leader><cr>", { desc = "view key map" })
vim.keymap.set("n", "<leader>?", function() require('telescope.builtin').keymaps({ default_text = "<space>" }) end,
  { desc = "View <leader> keymaps" })
vim.keymap.set("n", "<leader>+", ":resize +1<CR>", { desc = "Increase window size" })
vim.keymap.set("n", "<leader>_", ":resize -1<CR>", { desc = "Decrease window size" })
vim.api.nvim_set_keymap('i', '<S-Tab>', '<C-d>', { noremap = true, silent = true })
vim.keymap.set("x", "p", [["_dP]], { noremap = true, silent = true })

-- copilot
vim.keymap.set("n", "<leader>cc", "<cmd>CopilotChat<cr>", { desc = "Open Copilot" })
vim.keymap.set("n", "<leader>cr", "<cmd>CopilotChatReset<cr>", { desc = "Reset Copilot" })

-- clipboard
vim.keymap.set("n", "<leader>yy", '"+yy', { desc = "yank line to system clipboard" })
vim.keymap.set("v", "<leader>y", '"+y', { desc = "yank to system clipboard" })
vim.keymap.set("n", "<leader>ya", 'vgg0G$"+y', { desc = "yank entire file to system clipboard" })
vim.keymap.set("n", "<leader>p", '"+p', { desc = "paste line from system clipboard" })

-- word wrap
vim.keymap.set("n", "<leader>ww", '<CMD>set wrap<CR>', { desc = "Enable word wrap" })
vim.keymap.set("n", "<leader>WW", '<CMD>set nowrap<CR>', { desc = "Disable word wrap" })

-- folds
vim.keymap.set("n", "<leader>z[", 'z[', { desc = "navigate to next fold" })
vim.keymap.set("n", "<leader>z]", 'z]', { desc = "navigate to previous fold" })

-- navigation
vim.keymap.set("n", "<leader>ml", ']m', { desc = "navigate to next method" })
vim.keymap.set("n", "<leader>mk", '[m', { desc = "navigate to previous method" })
vim.keymap.set("n", "H", '^', { noremap = true, desc = "navigate to start of line" })
vim.keymap.set("v", "H", '^', { noremap = true, desc = "navigate to start of line" })
vim.keymap.set("n", "L", '$', { noremap = true, desc = "navigate to start of line" })
vim.keymap.set("v", "L", '$', { noremap = true, desc = "navigate to start of line" })
vim.keymap.set('n', '<leader>oo', 'o<Esc>0', { noremap = true })
vim.keymap.set('n', '<leader>OO', 'O<Esc>0', { noremap = true })
vim.keymap.set('n', '<leader>n', '%', { noremap = true })


-- tabs
vim.keymap.set("n", "<leader>tn", "<cmd>tabnew<cr>", { desc = "create new tab" })
vim.keymap.set("n", "<leader>tl", "gt", { desc = "next tab" })
vim.keymap.set("n", "<leader>th", "gT", { desc = "previous tab" })

-- terminal
vim.keymap.set("n", "<leader>1", "<cmd>1ToggleTerm direction=horizontal<cr>",
  { desc = "Toggle Floating Terminal -- Instance 1" })
vim.keymap.set("n", "<leader>2", "<cmd>2ToggleTerm direction=horizontal<cr>",
  { desc = "Toggle Floating Terminal -- Instance 2" })
vim.keymap.set("n", "<leader>3", "<cmd>3ToggleTerm direction=horizontal<cr>",
  { desc = "Toggle Floating Terminal -- Instance 3" })
vim.keymap.set("t", "<esc>", "<c-\\><c-n>", { desc = "exit terminal mode" })

-- visual mode
vim.keymap.set("n", "<leader>va", "gg0vG$", { desc = "select all" })

-- diagnostics
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { desc = "view info on squiggly lines" })

-- emmet
vim.api.nvim_set_keymap('n', '<Leader>ee', '<Plug>(emmet-expand-abbr)', { desc = 'Trigger Emmet Expand' })
vim.api.nvim_set_keymap('i', '<C-e><C-e>', '<Plug>(emmet-expand-abbr)', { desc = 'Trigger Emmet Expand' })
vim.api.nvim_set_keymap('i', '<C-e><C-a>', "<cmd>lua vim.lsp.buf.completion_item_resolve()<CR>",
  { noremap = true, silent = true, desc = 'Trigger Emmet Completion' })

-- debugging

vim.keymap.set("n", "<leader>DS", function() require("dap").continue() end, { desc = "Start / Continue debugging." })

vim.keymap.set("n", "<leader>DA", function()
  local dap = require('dap')
  local dapui = require('dapui')
  dapui.close()
  dap.terminate()
  dap.disconnect()
end, { desc = "Abort debugging (terminate + close UI + open log)" })

vim.keymap.set("n", "<leader>DE", function()
  require("dapui").eval(nil, { enter = true })
end, { desc = "DAP Evaluate Under Cursor" })

vim.keymap.set("n", "<leader>DD", function() require("dap").toggle_breakpoint() end, { desc = "Set breakpoint" })
vim.keymap.set("n", "<leader>DL", function() require("dap").step_over() end, { desc = "Step Over" })
vim.keymap.set("n", "<leader>DJ", function() require("dap").step_into() end, { desc = "Step Into" })
vim.keymap.set("n", "<leader>DK", function() require("dap").step_out() end, { desc = "Step Out" })

-- color picker

vim.keymap.set("n", "<leader>cp", "<cmd>PickColor<CR>", { desc = "Pick a color" })
vim.keymap.set("i", "<C-c><C-p>", "<cmd>PickColorInsert<CR>", { desc = "Pick color (insert mode)" })

