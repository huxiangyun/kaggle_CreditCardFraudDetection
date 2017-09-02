ws = "/Users/jaydeep/jaydeep_workstation/Workplace/Kaggle/ActiveCode/"
ws_img = "/Users/jaydeep/jaydeep_workstation/Workplace/Kaggle/ActiveCode/img/"
setwd(ws)


credit.data <- read.csv("creditcard.csv")

################################################################################################
#There are total 284807 obs.(rows) of  31 variables(cols)
#Time,V1..V28,Amount,Class
#So Class is label and other 30 cols are features.
str(credit.data)
################################################################################################

################################################################################################
#Getting max,min,mean, standard deviation(how data is spread) for each column
summary(credit.data)
df1 = subset(credit.data, select = -c(Time,Amount,Class))
#We can also plot min,max,SD, mean
flnm <- paste(ws_img,"min_",".jpeg", sep="")
jpeg(file = flnm)
barplot(apply(df1,2,min)) #1= row, 2= col
dev.off()
flnm <- paste(ws_img,"max_",".jpeg", sep="")
jpeg(file = flnm)
barplot(apply(df1,2,max))
dev.off()
flnm <- paste(ws_img,"sd_",".jpeg", sep="")
jpeg(file = flnm)
barplot(apply(df1,2,sd))
dev.off()
flnm <- paste(ws_img,"mean_",".jpeg", sep="")
jpeg(file = flnm)
barplot(apply(df1,2,mean))
dev.off()
################################################################################################

################################################################################################
#This will show how many unique class labels are present 0 1
unique(credit.data$Class)
#This will show fequencies of each class label
#0          1 
#284315    492
#So clearly it is imbalance data
table(credit.data$Class)
flnm <- paste(ws_img,"df_",".jpeg", sep="")
jpeg(file = flnm)
barplot(table(credit.data$Class))
dev.off()
################################################################################################

################################################################################################
############ covariance analysis- corelation plot start############
any(is.na(credit.data)) #FALSE it does not contain any NA value
df2 = subset(credit.data, select = -c(Class)) #removing Class columns
library(corrplot)
flnm <- paste(ws_img,"corr_",".jpeg", sep="")
jpeg(file = flnm)
M <- cor(df2)
corrplot(M, method='circle',type="upper") #method="pie","color","number"
dev.off()
##### covariance analysis- corelation plot end########
################################################################################################

################################################################################################
############## outlier analysis - histogram start#####################
for (ind in 1:28){
  colnm <- paste("V",ind, sep="")
  flnm <- paste(ws,"hist_",colnm,".jpeg", sep="")
  jpeg(file = flnm)
  labnm <- paste("histogram of feature",colnm, sep=" ")
  hist(credit.data[,ind+1], xlab= colnm, main =labnm, col = 'pink')
  dev.off()
}
############## outlier analysis - histogram end ##############
################################################################################################

################################################################################################
##### outlier analysis- boxplot using plotly start######
library(plotly)
for (ind in 1:28){
  colnm <- paste("V",ind, sep="")
  flnm <- paste(ws,"box_",colnm,".jpeg", sep="")
  p <- plot_ly(type = 'box', data= credit.data, x = ~Class, y = credit.data[,ind+1],
          marker = list(color = 'rgb(7,40,89)'),
          line = list(color = 'rgb(7,40,89)'))
  export(p, file = flnm)
}
##### outlier analysis- boxplot using plotly end######
################################################################################################


################################################################################################
library(ggplot2)
flnm <- paste(ws_img,"pca_",".jpeg", sep="")
jpeg(file = flnm)
df3 = subset(credit.data, select = -c(Class))
credit.pca <- prcomp(df3, scale. = FALSE)
credit.data.pca <- as.data.frame(credit.pca$x)
#Adding class data for coloring
df4 = subset(credit.data, select = c(Class))
credit.data.pca <- cbind(credit.data.pca, df4)
#plotting with first two principle components
ggplot(credit.data.pca, aes(x=credit.data.pca[,1],y=credit.data.pca$Class))+
  geom_point(aes(color=factor(credit.data.pca$Class)))+ #we need dicrete class- label color
  ggtitle("Scatter plot of Credit Data PC1 - Class")+
  xlab("PC1") + ylab("Class")
dev.off()
################################################################################################

################################################################################################
library(caret)
set.seed(1234)
splitIndex <- createDataPartition(credit.data$Class, p = .80,list = FALSE,times = 1)
trainSplit <- credit.data[ splitIndex,]
testSplit <- credit.data[-splitIndex,] #only use once at the end
#do not change anything in test dataset, use SMOTE algo only in train data set.
table(trainSplit$Class)#     0-> 227451      1-> 395 #Actual number of data division
prop.table(table(trainSplit$Class))# 0-> 0.998      1-> 0.0017 #probability of data division
library(ROSE)
trainSplit <- ovun.sample(Class~., data=trainSplit, method="both", p = 0.5, N=200000 , seed = 212)$data
table(trainSplit $Class)#     0-> 99868      1-> 100132 #Actual number of data division
prop.table(table(trainSplit$Class))# 0-> 0.49      1-> 0.50 #probability of data division
################################################################################################

################################################################################################
library(glmnet)
lambdas <- 10^seq(3, -2, by = -.1)
#alpha = 0 for ridge regression, alpha = 1 for lasso regression
#L1 Regularizer or Lasso , L2 Regularizer or Ridge
#cv.glmnet() uses cross-validation to work out how well each model
train_X = as.matrix(subset(trainSplit, select = -c(Class)))
train_Y = trainSplit$Class
cv_fit <- cv.glmnet(train_X, train_Y, alpha = 0, lambda = lambdas, family="binomial", nfolds = 10)
#The lowest point in the curve indicates the optimal lambda: 
#the log value of lambda that best minimised the error in cross-validation.
flnm <- paste(ws_img,"crossV_",".jpeg", sep="")
jpeg(file = flnm)
plot(cv_fit)
dev.off()
opt_lambda <- cv_fit$lambda.min
testX = as.matrix(subset(testSplit, select = -c(Class)))
y_predicted <- predict(cv_fit, s = opt_lambda, newx = testX,type="class")
#type="class" because we are doing classification, for regression do not write anything

################################################################################################


confusionMatrix(data=y_predicted, testSplit$Class)

