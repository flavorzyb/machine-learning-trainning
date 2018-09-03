library(e1071)
data(iris)
classifier <- naiveBayes(x = iris[, 1:4], iris[, 5])
table(predict(classifier, iris), iris[,5])
write.table(iris, 
            file = "iris.xls", 
            sep = "\t",
            eol = "\n",
            row.names = FALSE,
            col.names = TRUE,
            quote = TRUE,
            fileEncoding = "UTF-8")