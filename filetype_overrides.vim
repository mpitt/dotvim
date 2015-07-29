" Force .md files to be read as Markdown instead of the defautl Modula2
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" Read i18n'd html files correctly
autocmd BufNewFile,BufReadPost *.html.?? set filetype=html
