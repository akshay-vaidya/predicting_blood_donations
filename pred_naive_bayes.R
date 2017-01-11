blood_dat<- read.csv("F:\\Data driven competitions\\predit_blood_donations\\Warm_Up_Predict_Blood_Donations_-_Traning_Data.csv", header = TRUE)
blood_test<- read.csv("F:\\Data driven competitions\\predit_blood_donations\\Warm_Up_Predict_Blood_Donations_-_Test_Data.csv", header = TRUE)
blood_dat$Made.Donation.in.March.2007<-factor(blood_dat$Made.Donation.in.March.2007)
training<-subset(blood_dat,select=-c(X))
test<-subset(blood_test,select=-c(X))
model <- naiveBayes(Made.Donation.in.March.2007 ~ ., data = training)
prediction<-predict(model,test,type="raw") # Type= raw to get the probabilities of class
write.csv(prediction, file = "F:\\Data driven competitions\\predict_dengue\\predictions22.csv", fileEncoding = "UTF-16LE")



