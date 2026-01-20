#--------------
# Häufigkeiten
# -------------

# Setup
# ---------
# Für dieses Tutorial müssen die Pakete **readxl** und **cleaner** bei Ihnen 
# auf dem System vorhanden sein. Sie können diese bei Bedarf über 
# install.packages("readxl") und install.packages("cleaner") installieren.

library(readxl)
library(cleaner)


# Einlesen der Daten
# -------------------
Alter_df <- read_excel("Alter.xlsx")
head(Alter_df)
View(Alter_df)


# Absolute und relative Häufigkeiten
#------------------------------------
table(Alter_df$Alter)
table(Alter_df$Alter)/length(Alter_df$Alter)


# Absolute und relative Häufigkeiten sowie kumulierte absolute 
# ------------------------------------------------------------
# und kumulierte relative Häufigkeiten
#-------------------------------------

freq(Alter_df$Alter)
freq(Alter_df$Alter, nmax=Inf)
freq(Alter_df$Alter, sort.count=FALSE, nmax=Inf)

Alter_df$Alter |> freq(sort.count=FALSE, nmax=Inf)

