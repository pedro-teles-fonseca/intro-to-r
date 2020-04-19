

### TPC 3

air <- airquality

subset(airquality, Day == 1, select = c(1, 2))
subset(airquality, Temp > 80, select = c(Ozone, Temp))
subset(airquality, Day == 1, select = -Temp)
subset(airquality, select = Ozone:Wind)


subset(airquality, Day == 1, select = Solar.R:Temp)



  






