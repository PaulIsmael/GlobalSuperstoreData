getwd()
 df <- read.csv("https://public.tableau.com/app/sample-data/HollywoodsMostProfitableStories.csv")
View(df)
#install tidyverse package
install.packages("tidyverse")
#Import library
library(tidyverse)
#checks the data types
str(df)
#Step 2- Clean the data
#Check for missing values
colSums(is.na(df))
#Drop missing values
df<-na.omit(df)
colSums(is.na(df))
#check to make sure colSums row have been removed
#Summary Statistics
summary(df)
#Scatterplot
ggplot(df, aes(x=Lead.Studio, y=Rotten.Tomatoes..)) + geom_point()+ scale_y_continuous(labels = scales::comma)+coord_cartesian(ylim = c(0, 110))+theme(axis.text.x = element_text(angle = 90))
#bar chart
ggplot(df, aes(x=Year)) + geom_bar()
write.csv(df,"clean_df.csv")























