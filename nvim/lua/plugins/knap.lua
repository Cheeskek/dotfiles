return {
    "frabjous/knap",
    init = function()
        local gknapsettings = {
            --texoutputext = "pdf",
            --textopdf = "pdflatex -synctex=1 -halt-on-error -interaction=batchmode %docroot%",
            --textopdfviewerlaunch = "mupdf %outputfile%",
            --textopdfviewerrefresh = "kill -HUP %pid%"
            -- textopdfviewerlaunch = "zathura --synctex-editor-command 'nvim --headless -es --cmd \"lua require('\"'\"'knaphelper'\"'\"').relayjump('\"'\"'%servername%'\"'\"','\"'\"'%{input}'\"'\"',%{line},0)\"' %outputfile%",
            -- textopdfviewerrefresh = "none",
            -- textopdfforwardjump = "zathura --synctex-forward=%line%:%column%:%srcfile% %outputfile%",
        }
        -- vim.g.knap_settings = gknapsettings
    end,
}
