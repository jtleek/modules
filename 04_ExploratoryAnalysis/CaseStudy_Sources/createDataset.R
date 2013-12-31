d <- readRDS("speciation_monitors.rds")
x <- d[["36005.0110"]]
nms <- grep("MDL$|SD$", names(x), invert = TRUE, value = TRUE)
nms <- nms[1:53]
nms <- nms[-match("sodium", nms)]
x <- x[, nms]
dates <- x[, 1]
row.names(x) <- as.character(dates)
x <- x[, -1]
names(x)[51] <- "organic_carbon"

write.csv(x, file = "PM_speciation_36005.0110.csv", row.names = TRUE)
