data("cars")
head(cars)
model<-lm(cars$dist~cars$speed, data = cars)
summary(model)
model$coefficients
plot(cars$speed, cars$dist,pch = 19)
abline(coef(model), col = "red", lty = 5 , lwd = 2)
cor.test(cars$speed, cars$dist)

predict(model, newdata = data.frame(speed=20))
model$coefficients
a = 3.932409
b = -17.579095
b = model$coefficients[1]
a = model$coefficients[2]
b
a
y = a*20+b
y
x=20
y = a*x+b
y

library("MASS")
data("Cars93")
head(Cars93)
str(Cars93)
model<-lm(Price~EngineSize+RPM+Weight+Width+Length+Horsepower, data = Cars93)
summary(Cars93)
step(model, direction = "backward")
