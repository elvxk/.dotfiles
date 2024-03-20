local map = vim.keymap.set

-- Buffer
map("n", "<leader>bd", "<cmd>bw<cr>", { desc = "Wipe buffer" })
map("n", "<Tab>", "<cmd>bn<cr>", { desc = "Buffer next" })
map("n", "<S-Tab>", "<cmd>bp<cr>", { desc = "Buffer pref" })

-- Move lines
map("n", "<A-Down>", "<cmd>m .+1<cr>==", { desc = "Move down" })
map("n", "<A-Up>", "<cmd>m .-2<cr>==", { desc = "Move up" })
map("i", "<A-Down>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
map("i", "<A-Up>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
map("v", "<A-Down>", "<cmd>m '>+1<cr>gv=gv", { desc = "Move down" })
map("v", "<A-Up>", "<cmd>m '<-2<cr>gv=gv", { desc = "Move up" })

-- Move to window using the <ctrl> hjkl keys
map("n", "<C-Left>", "<C-w>h", { desc = "Go to left window", remap = true })
map("n", "<C-Down>", "<C-w>j", { desc = "Go to lower window", remap = true })
map("n", "<C-Up>", "<C-w>k", { desc = "Go to upper window", remap = true })
map("n", "<C-Right>", "<C-w>l", { desc = "Go to right window", remap = true })
map("n", "<C-h>", "<C-w>h", { desc = "Go to left window", remap = true })
map("n", "<C-j>", "<C-w>j", { desc = "Go to lower window", remap = true })
map("n", "<C-k>", "<C-w>k", { desc = "Go to upper window", remap = true })
map("n", "<C-l>", "<C-w>l", { desc = "Go to right window", remap = true })

-- Resize window using <ctrl> arrow keys
map({ "n", "t" }, "<C-A-Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
map({ "n", "t" }, "<C-A-Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
map({ "n", "t" }, "<C-A-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
map({ "n", "t" }, "<C-A-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })

-- Window split
map("n", "<leader>we", "<cmd>vsplit<CR>", { desc = "Split window right" })
map("n", "<leader>ws", "<cmd>split<CR>", { desc = "Split window below" })

-- File
map("n", "<C-a>", "gg<S-v>G", { desc = "Select All" })
map("n", "<S-u>", "<C-R>", { desc = "Redo" })
