#Skript zum GitHub Repository ein-kleiner-test

setwd("/Users/sina.ruether/Documents/GitHub/ein-kleiner-test")
#hier das aktuelle Arbeitsverzeichnis angeben, um File einzulesen

lieblinge<-read.csv("lieblinge.csv", sep=";", header=TRUE)[,2:5]
#Bei der Exportierung von der csv Datei wurden noch drei zusaetzliche
#Spalten hinzugefuegt, die wir in R nicht verwenden moechten

summary(lieblinge)
#ID             Alter    Lieblingsfarbe Lieblingstier
#Min.   : 1.000   Min.   :18   blau:4         Hund   :4    
#1st Qu.: 4.000   1st Qu.:19   gelb:2         Bär    :1    
#Median : 7.000   Median :21   grün:3         Elefant:1    
#Mean   : 7.077   Mean   :23   rot :4         Giraffe:1    
#3rd Qu.:10.000   3rd Qu.:25                  Hase   :1    
#Max.   :14.000   Max.   :35                  Katze  :1    
#(Other):4 

a<-which(lieblinge$Lieblingstier=="Hund" | lieblinge$Lieblingstier=="Katze" | lieblinge$Lieblingstier== "Hase" |lieblinge$Lieblingstier=="Pferd")
Kategorien<- rep("Zootier", 13)
Kategorien[a] <- "Haustier"
lieblinge$Kategorien <- Kategorien

hist(lieblinge$Alter, freq=FALSE, main="Alter", xlab="Alter (in Jahren)", ylab="Dichte")

plot(lieblinge$Lieblingsfarbe, col=c("blue", "yellow", "green", "red"), main="Lieblingsfarbe", xlab="Farben", ylab="abs. Häufigkeit")




