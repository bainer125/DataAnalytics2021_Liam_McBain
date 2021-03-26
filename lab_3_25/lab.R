### Liam McBain ###
### 6000 Level  ###
### Section 2   ###

setwd("C:/Users/Liam McBain/Documents/Data Analytics/DataAnalytics2021_Liam_McBain/lab_3_25/")

wine_data <- read.table("http://archive.ics.uci.edu/ml/machine-learning-databases/wine/wine.data", sep = ",")

colnames(wine_data) <- c("Cvs", "Alcohol", 
                         "Malic_Acid", "Ash", "Alkalinity_of_Ash", 
                         "Magnesium", "Total_Phenols", "Flavanoids", "NonFlavanoid_Phenols",
                         "Proanthocyanins", "Color_Intensity", "Hue", "OD280/OD315_of_Diluted_Wine", 
                         "Proline")
head(wine_data) # Now you can see the header names.

heatmap(cor(wine_data),Rowv = NA, Colv = NA) 
