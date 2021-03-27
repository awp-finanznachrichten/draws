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
  CLQ2_Seed <- "seeded"
  
 } else {
  
 CLQ2_Opponents <- CLQ2_Opponents[1:10,]
 CLQ2_Seed <- "unseeded"
    
 }

#Adapt
CLQ2_Opponents$...7 <- substring(CLQ2_Opponents$...7,1,3)
colnames(CLQ2_Opponents) <- c("Team","Country","Coefficient")

write.csv(CLQ2_Opponents,"Output/CLQ2_Opponents.csv",row.names = FALSE)

print(CLQ2_Opponents)

#Get opponents CLQ3
CLQ3_Opponents <- CL_quali[15:26,10:12]

if (champ$Coef. > CLQ3_Opponents$...12[6]) {
  
  CLQ3_Opponents <- CLQ3_Opponents[7:12,]
  CLQ3_Seed <- "seeded"
  
} else {
  
  CLQ3_Opponents <- CLQ3_Opponents[1:6,]
  CLQ3_Seed <- "unseeded"
  
}

#Adapt
CLQ3_Opponents$...11 <- substring(CLQ3_Opponents$...11,1,3)
colnames(CLQ3_Opponents) <- c("Team","Country","Coefficient")

write.csv(CLQ3_Opponents,"Output/CLQ3_Opponents.csv",row.names = FALSE)

print(CLQ3_Opponents)

#Get opponents CLQ4
CLQ4_Opponents <- CL_quali[15:22,14:16]

if (champ$Coef. > CLQ4_Opponents$...16[4]) {
  
  CLQ4_Opponents <- CLQ4_Opponents[5:8,]
  CLQ4_Seed <- "seeded"
  
} else {
  
  CLQ4_Opponents <- CLQ4_Opponents[1:4,]
  CLQ4_Seed <- "unseeded"
  
}

#Adapt
CLQ4_Opponents$...15 <- substring(CLQ4_Opponents$...15,1,3)
colnames(CLQ4_Opponents) <- c("Team","Country","Coefficient")

write.csv(CLQ4_Opponents,"Output/CLQ4_Opponents.csv",row.names = FALSE)

print(CLQ4_Opponents)

#Commit
source("commit.R")



  