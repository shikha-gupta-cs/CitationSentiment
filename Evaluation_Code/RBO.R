library(gespeR)
library(openxlsx)

######### ATHAR DATASET #############

Ain <- read.xlsx("C:/Users/HP/Desktop/Athar_Result/Author_indexes_Athar.xlsx")
author1 <- Ain$Author
sin <- Ain$S_rank
cin <- Ain$H_Rank
names(sin) <- author1
names(cin) <- author1
rin = rbo(sin, cin, p=0.9, side = 'bottom')

Aim <- read.xlsx("C:/Users/HP/Desktop/Athar_Result/Author_impact_athar.xlsx")
author2 <- d2$Author
sim <- Aim$Rank_sent
cim <- Aim$Rank_imp
names(sim) <- author2
names(cim) <- author2
rim = rbo(cim, sim, p=0.90, side = 'bottom')

As <- read.xlsx("C:/Users/HP/Desktop/Athar_Result/Author_scores.xlsx")
author3 <- As$Author
ss <- As$Rank_Sent
cs <- As$Rank_Cit
names(ss) <- author3
names(cs) <- author3
rs = rbo(ss, cs, p=0.90, side = 'bottom')

Aps <- read.xlsx("C:/Users/HP/Desktop/Athar_Result/SentiScores_NSC.xlsx")
author4 <- Aps$Paper
sps <- Aps$Rank_Sent
cps <- Aps$Rank_Cit
names(sps) <- author4
names(cps) <- author4
rps = rbo(sps, cps, p=0.90, side = 'bottom')

Apg55 <- read.xlsx("C:/Users/HP/Desktop/Athar_Result/Author_PageRank_55.xlsx")
author55 <- Apg55$Author
spg55 <- Apg55$Rank_Sent
cpg55 <- Apg55$Rank_Cit
names(spg55) <- author55
names(cpg55) <- author55
rpg55 = rbo(spg55, cpg55, p=0.90, side = 'bottom')

Apg85 <- read.xlsx("C:/Users/HP/Desktop/Athar_Result/Author_PageRank_85.xlsx")
author85 <- Apg85$Author
spg85 <- Apg85$Rank_Sent
cpg85 <- Apg85$Rank_Cit
names(spg85) <- author85
names(cpg85) <- author85
rpg85 = rbo(spg85, cpg85, p=0.90, side = 'bottom')


######### SCICITE DATASET #############

Sain <- read.xlsx("C:/Users/HP/Desktop/SciCite_Results/Author_indexes_SciCite.xlsx")
Sauthor1 <- Sain$Author
sin_s <- Sain$Rank_S
cin_s <- Sain$Rank_H
names(sin_s) <- Sauthor1
names(cin_s) <- Sauthor1
rin_s = rbo(cin_s, sin_s, p=0.9, side = 'bottom')

Saim <- read.xlsx("C:/Users/HP/Desktop/SciCite_Results/Author_Impact_SciCite.xlsx")
Sauthor2 <- Saim$Author
sim_s <- Saim$Rank_S
cim_s <- Saim$Rank_I
names(sim_s) <- Sauthor2
names(cim_s) <- Sauthor2
rim_s = rbo(cim_s, sim_s, p=0.90, side = 'bottom')

Sas <- read.xlsx("C:/Users/HP/Desktop/SciCite_Results/SciCite_Author_Scores.xlsx")
Sauthor3 <- Sas$Author
ss_s <- Sas$Rank_Sent
cs_s <- Sas$Rank_Cit
names(ss_s) <- Sauthor3
names(cs_s) <- Sauthor3
rs_s = rbo(ss_s, cs_s, p=0.90, side = 'bottom')

Sci_ps <- read.xlsx("C:/Users/HP/Desktop/SciCite_Results/SciCite_SentiScores_NSC.xlsx")
Sauthor4 <- Sci_ps$Paper
sps_s <- Sci_ps$Rank_Sent
cps_s <- Sci_ps$Rank_Cit
names(sps_s) <- Sauthor4
names(cps_s) <- Sauthor4
rps_s = rbo(sps_s, cps_s, p=0.90, side = 'bottom')

Sapg55 <- read.xlsx("C:/Users/HP/Desktop/SciCite_Results/SciCite_Author_PageRank_55.xlsx")
Sauthor55 <- Sapg55$Author
spg55_s <- Sapg55$Rank_Sent
cpg55_s <- Sapg55$Rank_Cit
names(spg55_s) <- Sauthor55
names(cpg55_s) <- Sauthor55
rpg55_s = rbo(spg55_s, cpg55_s, p=0.90, side = 'bottom')

Sapg85 <- read.xlsx("C:/Users/HP/Desktop/SciCite_Results/SciCite_Author_PageRank_85.xlsx")
Sauthor85 <- Sapg85$Author
spg85_s <- Sapg85$Rank_Sent
cpg85_s <- Sapg85$Rank_Cit
names(spg85_s) <- Sauthor85
names(cpg85_s) <- Sauthor85
rpg85_s = rbo(spg85_s, cpg85_s, p=0.90, side = 'bottom')

# For ATHAR dataset
cat("RBO for h index in ATHAR dataset:", rin, "\n")
cat("RBO for Impact factor in ATHAR dataset:", rim, "\n")
cat("RBO for author scores in ATHAR dataset:", rs, "\n")
cat("RBO for Paper scores in ATHAR dataset:", rps, "\n")
cat("RBO for Author_PageRank_55 in ATHAR dataset:", rpg55, "\n")
cat("RBO for Author_PageRank_85 in ATHAR dataset:", rpg85, "\n")

# For SCICITE dataset
cat("RBO for H index in SCICITE dataset:", rin_s, "\n")
cat("RBO for impact in SCICITE dataset:", rim_s, "\n")
cat("RBO for author scores in SCICITE dataset:", rs_s, "\n")
cat("RBO for paper score in SentiScores_NSC in SCICITE dataset:", rps_s, "\n")
cat("RBO for Author_PageRank_55 in SCICITE dataset:", rpg55_s, "\n")
cat("RBO for Author_PageRank_85 in SCICITE dataset:", rpg85_s, "\n")

# For ATHAR dataset
cat("RBD for h index in ATHAR dataset:", 1-rin, "\n")
cat("RBD for Impact factor in ATHAR dataset:", 1-rim, "\n")
cat("RBD for author scores in ATHAR dataset:", 1-rs, "\n")
cat("RBD for Paper scores in ATHAR dataset:", 1-rps, "\n")
cat("RBD for Author_PageRank_55 in ATHAR dataset:", 1-rpg55, "\n")
cat("RBD for Author_PageRank_85 in ATHAR dataset:", 1-rpg85, "\n")

# For SCICITE dataset
cat("RBD for H index in SCICITE dataset:", 1-rin_s, "\n")
cat("RBD for impact in SCICITE dataset:", 1-rim_s, "\n")
cat("RBD for author scores in SCICITE dataset:", 1-rs_s, "\n")
cat("RBD for paper score in SentiScores_NSC in SCICITE dataset:", 1-rps_s, "\n")
cat("RBD for Author_PageRank_55 in SCICITE dataset:", 1-rpg55_s, "\n")
cat("RBD for Author_PageRank_85 in SCICITE dataset:", 1-rpg85_s, "\n")

setwd("C:/Users/HP/Desktop/")
library(rmarkdown)
library(knitr)

Aim <- read.xlsx("C:/Users/HP/Desktop/Athar_Result/Author_impact_athar.xlsx")
author2 <- Aim$Author
sim <- Aim$Rank_sent
cim <- Aim$Rank_imp
names(sim) <- author2
names(cim) <- author2
rim = rbo(cim, sim, p=0.90, side = 'bottom')
rim

rmarkdown::render("RBO_report.Rmd")
