# TODO fix and completely rework

library('latexpdf')

file <- file.path('test.tex')
writeLines(as.ltable(head(Theoph)), file)
tex2pdf(file, clean = FALSE)

file <- file.path(tempdir(),'test.tex')
writeLines(as.ltable(head(Theoph)), file)
## Not run: 
viewtex(file)
viewtex(file, png = TRUE, gs_cmd = 'mgs')

## End(Not run)
