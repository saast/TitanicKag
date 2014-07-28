traindata <- read.csv("train.csv", header = TRUE)
testdata <- read.csv("test.csv", header = TRUE)

testdata$Survived <- NA

data <- rbind(traindata, testdata)

data$Sex <- factor(data$Sex, levels = c("male", "female"), labels = c(0,1))
data$Age <- as.integer(data$Age)
data$Cabin <- factor(data$Cabin, labels = c(1:187))
data$Ticket <- factor(data$Ticket, labels = c(1:929))
data$Embarked <- factor(data$Embarked, levels = c("","C","Q", "S"), labels = c("",1,2,3))


write.table(data[1:891,], file = 'output.csv', sep = ",", row.names = FALSE, qmethod="double")
write.table(data[892:1309,], file = 'testoutput.csv', sep = ",", row.names = FALSE, qmethod="double")


