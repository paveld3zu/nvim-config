-- Настройка курсора для нормального режима (блок) и режима вставки (вертикальная линия)
-- vim.opt.guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50"

-- Восстановление курсора после выхода из Neovim
vim.api.nvim_create_autocmd("VimLeave", {
    pattern = "*",
    callback = function()
        vim.opt.guicursor = "a:ver25"  -- Курсор "beam" после выхода
    end
})
