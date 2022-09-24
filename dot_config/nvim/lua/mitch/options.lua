local options = {
    signcolumn = "yes",
    title = true,
    splitright = true,
    splitbelow = true,
    scrolloff = 8,
    sidescrolloff = 8,
    clipboard = "unnamed", -- was unnamedplus
    completeopt = { "menuone", "noselect" },
    wildmenu = true,
    termguicolors = true,
    pumheight = 10,
    mouse = "a",
    showcmd = true,
    showmode = false,
    fileencoding = "utf-8",
    updatetime = 300,
    smartindent = true, -- think about this
    ignorecase = true,
    smartcase = true,
    confirm = true,
    showmatch = true,
    expandtab = true,
    shiftwidth = 4,
    softtabstop = 4,
    laststatus = 2,
    ruler = true,
    cursorline = true,
    number = true,
    relativenumber = true,
    backup = false,
    -- writebackup = false,
    wrap = false,
    swapfile = false
    -- default
    -- hlsearch = true,
    -- incsearch = true


}

vim.opt.shortmess:append "c"

for key, value in pairs(options) do
    vim.opt[key] = value
end
