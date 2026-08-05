books <- data.frame(BookID=1:3, Title=c("BookA","BookB","BookC"))
borrowers <- data.frame(BorrowerID=1:3, Name=c("Asha","Bala","Chitra"))
issues <- data.frame(BookID=c(1,1,1,2,2,3,3,3,3,3), BorrowerID=c(1,2,3,1,2,1,2,3,1,2),
                     DueDate=as.Date(c("2026-07-10","2026-07-12","2026-07-15","2026-07-08",
                                       "2026-07-09","2026-07-05","2026-07-06","2026-07-07",
                                       "2026-07-11","2026-07-12")))

data <- merge(books, issues, by="BookID")
data <- merge(data, borrowers, by="BorrowerID")
issue_count <- table(data$BookID)
popular_books <- names(issue_count[issue_count > 5])
overdue <- subset(data, DueDate < Sys.Date())
write.csv(overdue, "LibraryReport.csv", row.names = FALSE)

print(popular_books)
print(overdue)
