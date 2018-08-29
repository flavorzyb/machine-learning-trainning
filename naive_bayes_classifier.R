library(e1071)
data(iris)
classifier <- naiveBayes(x = iris[, 1:4], iris[, 5])
table(predict(classifier, iris), iris[,5])