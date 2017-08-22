setwd("/Users/jaydeep/jaydeep_workstation/Workplace/Kaggle/CreditCardFraudDetection")

credit.data <- read.csv("creditcard.csv")

##### Module3: outlier analysis- boxplot using plotly start######
library(plotly)
plot_ly(type = 'box', data= credit.data, x = ~Class, y = ~V1, marker = list(color = 'rgb(7,40,89)'),
               line = list(color = 'rgb(7,40,89)')) 
plot_ly(type = 'box',data= credit.data, x = ~Class, y = ~V2,  marker = list(color = 'rgb(9,56,125)'),
              line = list(color = 'rgb(9,56,125)')) 
plot_ly(type = 'box',data= credit.data, x = ~Class, y = ~V3,  marker = list(color = 'rgb(8,81,156)'),
              line = list(color = 'rgb(8,81,156)'))
plot_ly(type = 'box',data= credit.data, x = ~Class, y = ~V4, marker = list(color = 'rgb(107,174,214)'),
              line = list(color = 'rgb(107,174,214)'))
plot_ly(type = 'box', data= credit.data, x = ~Class, y = ~V5, marker = list(color = 'rgb(7,40,89)'),
        line = list(color = 'rgb(7,40,89)')) 
plot_ly(type = 'box',data= credit.data, x = ~Class, y = ~V6,  marker = list(color = 'rgb(9,56,125)'),
        line = list(color = 'rgb(9,56,125)')) 
plot_ly(type = 'box',data= credit.data, x = ~Class, y = ~V7,  marker = list(color = 'rgb(8,81,156)'),
        line = list(color = 'rgb(8,81,156)'))
plot_ly(type = 'box',data= credit.data, x = ~Class, y = ~V8, marker = list(color = 'rgb(107,174,214)'),
        line = list(color = 'rgb(107,174,214)'))
plot_ly(type = 'box', data= credit.data, x = ~Class, y = ~V9, marker = list(color = 'rgb(7,40,89)'),
        line = list(color = 'rgb(7,40,89)'))
plot_ly(type = 'box', data= credit.data, x = ~Class, y = ~V10,  marker = list(color = 'rgb(9,56,125)'),
        line = list(color = 'rgb(9,56,125)'))
plot_ly(type = 'box',data= credit.data, x = ~Class, y = ~V11,  marker = list(color = 'rgb(8,81,156)'),
        line = list(color = 'rgb(8,81,156)'))
plot_ly(type = 'box',data= credit.data, x = ~Class, y = ~V12, marker = list(color = 'rgb(107,174,214)'),
        line = list(color = 'rgb(107,174,214)'))
plot_ly(type = 'box', data= credit.data, x = ~Class, y = ~V13, marker = list(color = 'rgb(7,40,89)'),
        line = list(color = 'rgb(7,40,89)')) 
plot_ly(type = 'box',data= credit.data, x = ~Class, y = ~V14,  marker = list(color = 'rgb(9,56,125)'),
        line = list(color = 'rgb(9,56,125)')) 
plot_ly(type = 'box',data= credit.data, x = ~Class, y = ~V15,  marker = list(color = 'rgb(8,81,156)'),
        line = list(color = 'rgb(8,81,156)'))
plot_ly(type = 'box',data= credit.data, x = ~Class, y = ~V16, marker = list(color = 'rgb(107,174,214)'),
        line = list(color = 'rgb(107,174,214)'))
plot_ly(type = 'box', data= credit.data, x = ~Class, y = ~V17, marker = list(color = 'rgb(7,40,89)'),
        line = list(color = 'rgb(7,40,89)')) 
plot_ly(type = 'box',data= credit.data, x = ~Class, y = ~V18,  marker = list(color = 'rgb(9,56,125)'),
        line = list(color = 'rgb(9,56,125)')) 
plot_ly(type = 'box',data= credit.data, x = ~Class, y = ~V19,  marker = list(color = 'rgb(8,81,156)'),
        line = list(color = 'rgb(8,81,156)'))
plot_ly(type = 'box',data= credit.data, x = ~Class, y = ~V20, marker = list(color = 'rgb(107,174,214)'),
        line = list(color = 'rgb(107,174,214)'))
plot_ly(type = 'box', data= credit.data, x = ~Class, y = ~V21, marker = list(color = 'rgb(7,40,89)'),
        line = list(color = 'rgb(7,40,89)')) 
plot_ly(type = 'box',data= credit.data, x = ~Class, y = ~V22,  marker = list(color = 'rgb(9,56,125)'),
        line = list(color = 'rgb(9,56,125)')) 
plot_ly(type = 'box',data= credit.data, x = ~Class, y = ~V23,  marker = list(color = 'rgb(8,81,156)'),
        line = list(color = 'rgb(8,81,156)'))
plot_ly(type = 'box',data= credit.data, x = ~Class, y = ~V24, marker = list(color = 'rgb(107,174,214)'),
        line = list(color = 'rgb(107,174,214)'))
plot_ly(type = 'box',data= credit.data, x = ~Class, y = ~V25, marker = list(color = 'rgb(7,40,89)'),
        line = list(color = 'rgb(7,40,89)')) 
plot_ly(type = 'box', data= credit.data, x = ~Class, y = ~V26,  marker = list(color = 'rgb(9,56,125)'),
        line = list(color = 'rgb(9,56,125)')) 
plot_ly(type = 'box', data= credit.data, x = ~Class, y = ~V27,  marker = list(color = 'rgb(8,81,156)'),
        line = list(color = 'rgb(8,81,156)'))
plot_ly(type = 'box', data= credit.data, x = ~Class, y = ~V28, marker = list(color = 'rgb(107,174,214)'),
        line = list(color = 'rgb(107,174,214)'))

###### Module3: outlier analysis- boxplot using plotly end#######

###### Module3: outlier analysis - histogram start############
for (ind in 1:28){
  colnm <- paste("V",ind, sep="")
  flnm <- paste("/home/jayeeta/Education/assignments/rstart/kaggleChallenges/active_code/h_",colnm,".jpeg", sep="")
  #print(flnm)
  jpeg(file = flnm)
  labnm <- paste("histogram of feature",colnm, sep=" ")
  #jpeg(file = "/home/jayeeta/Education/assignments/rstart/kaggleChallenges/active_code/bx_"+colnm+".jpeg")
  hist(credit.data[,ind+1], xlab= colnm, main =labnm, col = 'pink')
  dev.off()
}
############## Module3: outlier analysis - histogram end ##############
