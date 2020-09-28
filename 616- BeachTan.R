data <- read.csv("BeachTan.csv")

head(data)
class(data$Gender)
levels(data$Gender)
install.packages("DataExplorer")
DataExplorer::profile_missing(data)
plot(data$Gender, data$RetailRevenue)
head(data$Gender)
# changing membership type & membership level to factors
data$MembershipType<-as.factor(data$MembershipType)
data$MembershipLevel<-as.factor(data$MembershipLevel)

test_reg = lm(UVTans ~ MembershipLevel, data = data)
plot(data$Age, data$MembershipLevel)
hist(data$Age, data$MembershipLevel)
summary(test_reg)

