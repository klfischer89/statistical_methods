#--------------------
# Streuungsparameter
# -------------------

# Setup
# ---------
# Für dieses Tutorial muss das Paket **readxl** bei Ihnen auf dem System 
# vorhanden sein. Sie können dieses bei Bedarf über install.packages("readxl")
# installieren.

library(readxl)

# Einlesen der Daten
# -------------------
Alter_df <- read_excel("Alter.xls")
head(Alter_df)
View(Alter_df)


##################################
# Maximum, Minimum und Spannweite
##################################
max(Alter_df$Alter)
min(Alter_df$Alter)

max(Alter_df$Alter) - min(Alter_df$Alter)

range(Alter_df$Alter)

##################################
# Varianz
##################################

var(Alter_df$Alter) # Gibt die Stichprobenvarianz aus (Korrektur mit 1/(n-1))

# Die Populationsvarianz ergibt sich indem man die Stichprobenvarianz mit (n-1)/n multipliziert

n <- length(Alter_df$Alter)

var(Alter_df$Alter) * ((n-1)/n)


##################################
# Standardabweichung
##################################

sd(Alter_df$Alter) # Gibt die Standardabweichung der Stichprobe aus (Korrektur mit 1/(n-1))
sqrt(var(Alter_df$Alter) * ((n-1)/n)) # Standardabweichung in der Population


##################################
# P25
##################################

quantile(Alter_df$Alter, .25)

##################################
# P50
##################################

quantile(Alter_df$Alter, .50)


##################################
# P75
##################################

quantile(Alter_df$Alter, .75)



##################################
# P20
##################################

quantile(Alter_df$Alter, .20)


##################################
# P80
##################################

quantile(Alter_df$Alter, .80)


##################################
# Quantilsabstand
##################################

quantile(Alter_df$Alter, .80) - quantile(Alter_df$Alter, .20)


##################################
# Interquartile Range
##################################

quantile(Alter_df$Alter, .75) - quantile(Alter_df$Alter, .25)
IQR(Alter_df$Alter)

##################################
# Quantilsverhältnis
##################################

quantile(Alter_df$Alter, .80) / quantile(Alter_df$Alter, .20)

