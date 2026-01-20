#-------------------------------
# Korrelation
#-------------------------------

# Setup
# Für dieses Tutorial müssen die Pakete **readxl** und **ggplot2** bei Ihnen
# auf dem System vorhanden sein. Sie können diese bei Bedarf über
# install.packages("readxl") und install.packages("ggplot2") installieren.


library(readxl)
library(ggplot2)


# Einlesen der Daten
#--------------------
Alter_Einkommen <- read_excel("Alter_Einkommen.xls")
head(Alter_Einkommen)
View(Alter_Einkommen)


#################################################
# Scatterplot
#################################################

Alter_Einkommen |> ggplot(aes(y=Einkommen, x=Alter)) +
  geom_point(color="#4292C6", size=2) +
  theme_light()


#################################################
# Korrelationskoeffizient
#################################################

cor(Alter_Einkommen$Alter, Alter_Einkommen$Einkommen, method="pearson")
