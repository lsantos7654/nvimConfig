function ToggleTerminal()
    -- Check if the terminal buffer is open
    for _, win in pairs(vim.api.nvim_tabpage_list_wins(0)) do
        local buf = vim.api.nvim_win_get_buf(win)
        local bt = vim.api.nvim_buf_get_option(buf, 'buftype')
        if bt == 'terminal' then
            -- If the terminal is open, close it
            vim.api.nvim_win_close(win, true)
            return
        end
    end
    vim.cmd('wincmd l')
    -- If the terminal is not open, open it
    vim.cmd('botright 10split | terminal')
end
