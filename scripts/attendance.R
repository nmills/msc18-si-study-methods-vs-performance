prob = c()
for(i in 1:10000){
  attendmore = rbinom(55,1,0.5)
  propotion = sum(attendmore)/55
  prob = c(prob,propotion)
}


count = c()

#based on the count obtained in response excel
prop_attendmore = 45/55

for(i in 1:10000){
  if(prob[i]>prop_attendmore){
    count = c(count,1)
  }
}

p = sum(count)/10000
print(p)
