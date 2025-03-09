# User-Defined Functions

myfunction = function(x){
  result <- x^2+5
  return(result)
}

# Test
myfunction(3)
myfunction(10)

statistics = function(x){
  m = mean(x)
  s = sd(x)
  cat(" Mean =",m,"\n","Standard deviation =",s)
}

data <- c(230,315,340,375,325,280,295,290,325,355,380,425)
statistics(data)
stats <- statistics(data)
