vim.g.mapleader = " "

--vim.keymap.set("n", "<leader>n", ":Lex<CR>:vertical resize 20<CR>")
vim.keymap.set("n", "<leader>n", ":Lex<CR>")
vim.keymap.set("n", "<leader>m", ":MaximizerToggle<CR>")
vim.keymap.set("n", "<leader>s", ":noh<CR>")
vim.keymap.set("n", "<leader>h", ":wincmd h<CR>")
vim.keymap.set("n", "<leader>j", ":wincmd j<CR>")
vim.keymap.set("n", "<leader>k", ":wincmd k<CR>")
vim.keymap.set("n", "<leader>l", ":wincmd l<CR>")
vim.keymap.set("n", "<leader>u", ":wincmd h<CR>")
vim.keymap.set("n", "<leader>h", ":wincmd h<CR>")
vim.keymap.set("n", "<leader>=", ":vertical resize +5<CR>", {silent = true})
vim.keymap.set("n", "<leader>-", ":vertical resize -5<CR>", {silent = true})
vim.keymap.set("n", "<leader>]", ":resize +5<CR>", {silent = true})
vim.keymap.set("n", "<leader>\\", ":resize -5<CR>", {silent = true})
vim.keymap.set("n", "ff", "za")
vim.keymap.set("n", "<C-h>", ":tabprevious<CR>")
vim.keymap.set("n", "<C-l>", ":tabnext<CR>")
vim.keymap.set("n", "<C-n>", ":tabnew<CR>")
vim.keymap.set("n", "<C-c>", ":tabclose<CR>")
vim.keymap.set("n", "<leader>H", "<C-w>H")
vim.keymap.set("n", "<leader>J", "<C-w>J")
vim.keymap.set("n", "<leader>K", "<C-w>K")
vim.keymap.set("n", "<leader>L", "<C-w>L")

vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("i", "kk", "<Esc>")
vim.keymap.set("i", "hh", "<Esc>")

vim.keymap.set("t", "<leader>h", "<c-\\><c-n><c-w>h")
vim.keymap.set("t", "<leader>j", "<c-\\><c-n><c-w>j")
vim.keymap.set("t", "<leader>k", "<c-\\><c-n><c-w>k")
vim.keymap.set("t", "<leader>l", "<c-\\><c-n><c-w>l")

vim.g.user42 = "llion"
vim.g.user42 = "llion@student.42mulhouse.fr"

-- ThePrimeagen mappings

-- move hilighted
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- make J to stay in place
vim.keymap.set("n", "J", "mzJ`z")
 
--make ctrl+d && ctrl+u stay in the middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

--make search stay in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

--keep the copy in memory (when paste over another word)
vim.keymap.set("x", "<leader>p", "\"_dP")

-- copy to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>y", "\"+Y")

-- delete to void register
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- ctrl-c save vertical changes too now
vim.keymap.set("i", "<C-c>", "<Esc")

-- Q deletedY
vim.keymap.set("n", "Q", "<nop>")

-- search and replace
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- make it executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })




