prob = c()
for(i in 1:10000){
  studymore = rbinom(55,1,0.5)
  propotion = sum(studymore )/55
  prob = c(prob,propotion)
}


count = c()

#based on the count obtained in response excel
prop_studymore  = 19/55

for(i in 1:10000){
  if(prob[i]<prop_studymore ){
    count = c(count,1)
  }
}

p = sum(count)/10000
print(p)
