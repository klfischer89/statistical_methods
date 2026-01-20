#-------------------------------
# Konzentrationsmaße
#-------------------------------

# Setup
# Für dieses Tutorial müssen die Pakete **readxl**, **tidyverse**, **gglorenz** 
# und **ineq** bei Ihnen auf dem System vorhanden sein. Sie können diese bei 
# Bedarf über install.packages("readxl"), install.packages("tidyverse"), 
# install.packages("gglorenz") und install.packages("ineq") installieren.


library(readxl)
library(tidyverse)
library(gglorenz)
library(ineq)


# Einlesen der Daten
#--------------------
PV_Anbieter <- read_excel("PV_Anbieter.xls")
head(PV_Anbieter)
View(PV_Anbieter)

########################################
# Lorenz Kurve
########################################

PV_Anbieter |> ggplot(aes(Umsatz)) +
  stat_lorenz()

PV_Anbieter |> ggplot(aes(Umsatz)) +
  stat_lorenz(color="blue") +
  geom_segment(aes(x = 0, xend = 1, y = 0, yend = 1), colour = "red",lty = "dashed") +
  annotate_ineq(PV_Anbieter$Umsatz) +
  labs(y="", x="Umsatz", title="Lorenzkurve für den Markt der PV-Anbieter") +
  theme_light()



########################################
# Gini Koeffizient
########################################

ineq(PV_Anbieter$Umsatz)


########################################
# Konzentrationsrate
########################################

# Summe aller Umsätze der PV-Anbieter
sum(PV_Anbieter$Umsatz)

# Umsatz des letzten PV-Anbieters in der Liste
last(PV_Anbieter$Umsatz)

# Umsatz des vorletzten PV-Anbieters in der Liste
nth(PV_Anbieter$Umsatz, -2L)

# Für die beiden Anbieter mit dem höchsten Umsatz (g=2) ergibt sich also
last(PV_Anbieter$Umsatz) / sum(PV_Anbieter$Umsatz) + nth(PV_Anbieter$Umsatz, -2L) / sum(PV_Anbieter$Umsatz)

