library(openxlsx)

SalesPerson <- c("Teddy","Phil","Joanne","Jane","Richard","Tabatha")
Months <- c(seq.Date(from=as.Date("2021/01/01"),to=as.Date("2021/12/31"),by="month"))
Sales <- round(rnorm(72,100,25),2)

dat <- data.frame(expand.grid(SalesPerson=SalesPerson,Months=Months),Sales)

for (i in 1:length(Months)) {
  sub_select <- dat[dat$Months==Months[i],]
  write.xlsx(sub_select,paste0("./ExcelExample/MonthlySales_",Months[i],".xlsx"))
}
