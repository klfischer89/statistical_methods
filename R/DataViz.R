#--------------------
# Data Visualization
# -------------------

# Setup
# ---------
# Für dieses Tutorial müssen die Pakete **readxl**, **ggplot2**, **tidyverse** 
# und **plotly** bei Ihnen auf dem System vorhanden sein. Sie können dieses 
# bei Bedarf über install.packages("readxl"), install.packages("ggplot2"),
# install.packages("tidyverse") und install.packages("plotly") installieren.

library(readxl)
library(ggplot2)
library(tidyverse)
library(plotly)


# Einlesen der Daten
# -------------------
Alter_df <- read_excel("Alter.xls")
head(Alter_df)

#####################################################
# Absolute Häufigkeiten
#####################################################

Alter_df |> ggplot(aes(x=Alter)) +
  geom_bar()

mypalette <- rep(c("#4292C6"), times=21)

Alter_df |> ggplot(aes(x=Alter, fill=as.factor(Alter))) +
  geom_bar() +
  theme_bw() +
  theme(legend.position = "none") + 
  scale_fill_manual(values=mypalette)

#####################################################
# Relative Häufigkeiten
#####################################################

Alter_df |> ggplot(aes(x=Alter, y=after_stat(count/sum(count)), fill=as.factor(Alter))) +
  geom_bar() + 
  theme_bw() +
  labs(y="Relative Häufigkeit in %") +
  theme(legend.position = "none") +
  scale_fill_manual(values=mypalette)


#####################################################
# Absolute Häufigkeiten (inkl. Layout)
#####################################################

Alter_df |> ggplot(aes(x=Alter, fill=as.factor(Alter))) +
  geom_bar() + 
  geom_text(aes(label = after_stat(count)), stat = "count", vjust = 1.5, colour = "white")+
  theme_minimal() +
  labs(y="Absolute Häufigkeit") +
  theme(legend.position = "none") +
  scale_fill_manual(values=mypalette)


#####################################################
# Boxplot
#####################################################

Alter_df |> ggplot(aes(y=Alter)) +
  geom_boxplot() 

Alter_df |> ggplot(aes(y=Alter)) +
  geom_boxplot(fill="#4292C6") +
  stat_boxplot(geom ='errorbar', width = 0.4)+
  labs(title="Boxplot der Altersbeobachtungen") +
  theme_minimal()

#####################################################
# Kreisdiagramm via plotly
#####################################################

Alter2_df <- count(Alter_df, Alter)

pie <- plot_ly(Alter2_df, labels=~as.factor(Alter), values = ~n, type = 'pie')
pie_d <- pie |> 
  layout(title = 'Relative Häufigkeiten (Alter)')
pie_d

pie_e <- pie |> 
  layout(title = 'Relative Freq (Age)')
pie_e
