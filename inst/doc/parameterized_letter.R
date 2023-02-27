## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----eval=FALSE---------------------------------------------------------------
#  ---
#  author: Max Mustermann
#  return-address: [Musterstr. 12, 34567 Musterstadt]
#  signature: Max
#  
#  params:
#    name: DefaultNickname
#    address: "[Default Name, 123 Default St, Default Town]"
#    gift: DefaultGift
#  
#  output: komaletter::komaletter
#  ---
#  ---
#  address: `r params$address`
#  opening: `r paste0('Dear ', params$name, ',')`
#  closing: "Yours truly,"
#  ---
#  
#  thank you very much for the beautiful `r params$gift`. It was a pleasure to have you.

## ----eval=FALSE---------------------------------------------------------------
#  recipients <- data.frame(name=c("Bob", "Megan", "Alex"),
#                           gift=c("painting", "candlestick", "book"),
#                           address=c("[Robert Pitts, 5543 Aliquet St, Fort Dodge GA 20783]",
#                                     "[Megan Smith, 4156 Tincidunt Ave, Green Bay IN 19759]",
#                                     "[Alexander Fitzgerald, 869 Laurel Ave, St Paul MN 55104]"),
#                           stringsAsFactors=FALSE)

## ----eval=FALSE---------------------------------------------------------------
#  for(i in 1:nrow(recipients)){
#    rmarkdown::render("template_letter.Rmd",
#                      params=list(name=recipients[i, "name"],
#                                  gift=recipients[i, "gift"],
#                                  address=recipients[i, "address"]),
#                      output_file=paste0("letter_", recipients[i, 'name'], ".pdf"))
#  }

## ----eval=FALSE---------------------------------------------------------------
#  ---
#  params:
#    name: John
#    gift: candlestick
#  
#  output: komaletter::komaletter
#  ---

## ----eval=FALSE---------------------------------------------------------------
#  params$name
#  params$gift

## ----eval=FALSE---------------------------------------------------------------
#  ---
#  params:
#    name: John
#    gift: candlestick
#  
#  subject: "`r params$gift`"
#  
#  output: komaletter::komaletter
#  ---

## ----eval=FALSE---------------------------------------------------------------
#  rmarkdown::render("example.Rmd", params=list(name="Jane"))

## ----eval=FALSE---------------------------------------------------------------
#  ---
#  params:
#    # scalar:
#    name: John Doe
#    # flow style sequence:
#    address_flow: "[FirstName LastName, 123 Main St, Anytown]"
#    # block style sequence:
#    address_block: "\n  - FirstName LastName\n  - 123 Main St\n  - Anytown"
#  ---

## ----eval=FALSE---------------------------------------------------------------
#  ---
#  params:
#    name: John Doe
#  
#  opening: "`r paste0('Dear ', params$name, ',')`"
#  
#  output: komaletter::komaletter
#  ---

## ----eval=FALSE---------------------------------------------------------------
#  ---
#  author: Max Mustermann
#  return-address: [Musterstr. 12, 34567 Musterstadt]
#  signature: Max
#  
#  params:
#    name: Johnny
#    address: "[John Doe, 123 Main St, Anytown]"
#    gift: flowers
#  
#  output: komaletter::komaletter
#  ---
#  ---
#  address: `r params$address`
#  opening: `r paste0('Dear ', params$name, ',')`
#  closing: "Yours truly,"
#  ---
#  
#  thank you very much for the beautiful `r params$gift`. It was a pleasure to have you.

## ----eval=FALSE---------------------------------------------------------------
#  recipients <- data.frame(name=c("Bob", "Megan", "Alex"),
#                           gift=c("painting", "candlestick", "book"),
#                           address=c("[Robert Pitts, 5543 Aliquet St, Fort Dodge GA 20783]",
#                                     "[Megan Smith, 4156 Tincidunt Ave, Green Bay IN 19759]",
#                                     "[Alexander Fitzgerald, 869 Laurel Ave, St Paul MN 55104]"),
#                           stringsAsFactors=FALSE)
#  
#  
#  for(i in 1:nrow(recipients)){
#    rmarkdown::render("template_letter.Rmd",
#                      params=list(name=recipients[i, "name"],
#                                  gift=recipients[i, "gift"],
#                                  address=recipients[i, "address"]),
#                      output_file=paste0("letter_", recipients[i, 'name'], ".pdf"))
#  }
#  

