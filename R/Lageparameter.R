#--------------
# Lageparameter
# -------------

# Setup
# ---------
# Für dieses Tutorial müssen die Pakete **readxl**, **cleaner** und **DescTools** 
# bei Ihnen auf dem System vorhanden sein. Sie können diese bei Bedarf über 
# install.packages("readxl"), install.packages("cleaner") und 
# install.packages("DescTools") installieren.

library(readxl)
library(cleaner)
library(DescTools)

# Einlesen der Daten
# -------------------
Alter_df <- read_excel("Alter.xls")
head(Alter_df)
View(Alter_df)

############################
# Modus
############################

# Basis R-Lösung
# ---------------
Modus <- function(x) {
  z <- unique(x)
  tab <- tabulate(match(x, z))
  z[tab == max(tab)]
}

Modus(Alter_df$Alter)

freq(Alter_df$Alter, sort.count=FALSE, nmax=Inf)
freq(Alter_df$Alter, sort.count=TRUE, nmax=Inf)


# Lösung mit DescTools
# ---------------------

Mode(Alter_df$Alter)

############################
# Median
############################

median(Alter_df$Alter)



############################
# Arithmetischer Mittelwert
############################

mean(Alter_df$Alter, na.rm=TRUE)

Alter_df$Alter |> mean(na.rm=TRUE)

