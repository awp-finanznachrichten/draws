library(readxl)
swiss_clubs <- read_excel("cldraw'21-22.xlsx", 
                           sheet = "17.Switzerland")

CL_quali <- read_excel("cldraw'21-22.xlsx", 
                           sheet = "CL")

ECL_quali <- read_excel("cldraw'21-22.xlsx", 
                          sheet = "ECL")

###First ranked team
champ <- swiss_clubs[1,c(2,11)]

#Get opponents CLQ2
CLQ2_Opponents <- CL_quali[15:34,6:8]

if (champ$Coef. > CLQ2_Opponents$...8[10]) {
  
  CLQ2_Opponents <- CLQ2_Opponents[11:20,]
  
 } else {
  
 CLQ2_Opponents <- CLQ2_Opponents[1:10,]    
    
 }


#Get opponents CLQ3
CLQ3_Opponents <- CL_quali[15:26,10:12]

if (champ$Coef. > CLQ3_Opponents$...11[6]) {
  
  CLQ3_Opponents <- CLQ3_Opponents[7:12,]
  
} else {
  
  CLQ3_Opponents <- CLQ3_Opponents[1:6,]    
  
}

print(CLQ3_Opponents)
#Get opponents CLQ4
CLQ4_Opponents <- CL_quali[15:22,14:16]

if (champ$Coef. > CLQ4_Opponents$...16[4]) {
  
  CLQ4_Opponents <- CLQ4_Opponents[5:8,]
  
} else {
  
  CLQ4_Opponents <- CLQ4_Opponents[1:4,]    
  
}







  