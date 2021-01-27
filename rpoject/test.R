library(readr)
stex <- read_csv("stex.csv")
summary(stex)
# jetzt sind die Daten importiert

class(stex$Sex)

stex$Sex <- as.factor(stex$Sex)
stex$L1 <- as.factor(stex$L1)

class(stex$AaA)

cor(stex$AaA, stex$Speaking)

cor.test(stex$AaA, stex$Speaking)

t.test(formula = Speaking ~ Sex, data = stex)

m <- lm(formula = Speaking ~ Sex, data = stex)

summary(m)

anova(m)

m <- lm(formula = Speaking ~ AaA, data = stex)
summary(m)

m <- lm(formula = Speaking ~ Sex + AaA, data = stex)
summary(m)

m <- lm(formula = Speaking ~ Sex * AaA, data = stex)
summary(m)


