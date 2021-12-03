conn <- elr::dbConnect.dte()
grep(x = DBI::dbListTables(conn), ignore.case = T, pattern = "SCELL")
