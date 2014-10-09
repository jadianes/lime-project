lime.density <- lime.data$Lime.Weight / lime.data$Lime.Circumference
lime.data$Lime.Density <- lime.density
plot(Lime.Density,Juice.Volume,col=ifelse(Cut.Type=="transversal","red","blue"))
