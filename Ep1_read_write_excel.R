library(openxlsx)

FileNames <- list.files(path="./ExcelExample")
SheetNames <- paste0(month.name,"_2021")
SingleWorkbook <- list()

for (i in 1:length(FileNames)) {
  SingleWorkbook[[i]] <- read.xlsx(paste0("./ExcelExample/",FileNames[i]))
}

names(SingleWorkbook) <- SheetNames
write.xlsx(SingleWorkbook,"./ExcelExample/Combined.xlsx",overwrite=TRUE)
