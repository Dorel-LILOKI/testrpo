base_Mbongo_score2$vi_prevention <-ifelse(base_Mbongo_score2$Q29B=="PORT DU MASQUE"|
base_Mbongo_score2$Q29B=="PORT DES GANTS"|base_Mbongo_score2$Q29B=="UTILISATION DU GEL"|
base_Mbongo_score2$Q29B=="DESEINFECTION"|base_Mbongo_score2$Q29B=="DISTANCIATION"|
base_Mbongo_score2$Q29B=="TENU DE PROCTECTION"|base_Mbongo_score2$Q29B=="DESINFECTION"|
base_Mbongo_score2$Q29B=="ISOLEMENT",1,0)+ifelse(base_Mbongo_score2$Q25==1,1,0)
+ifelse(base_Mbongo_score2$Q26==1,1,0)+ifelse(base_Mbongo_score2$Q27==1,1,0)
+ifelse(base_Mbongo_score2$Q28==1,1,0)+ifelse(base_Mbongo_score2$Q29==1,1,0)
+ifelse(base_Mbongo_score2$Q30==1,1,0)+ifelse(base_Mbongo_score2$Q31==1,1,0)
+ifelse(base_Mbongo_score2$Q32==1,1,0)+ifelse(base_Mbongo_score2$Q33==2,1,0)
+ifelse(base_Mbongo_score2$Q34==1,1,0)+ifelse(base_Mbongo_score2$Q29C=="PORT DU MASQUE"|
base_Mbongo_score2$Q29C=="PORT DES GANTS"|base_Mbongo_score2$Q29C=="UTILISATION DU GEL"|
base_Mbongo_score2$Q29C=="DESEINFECTION"|base_Mbongo_score2$Q29C=="DISTANCIATION"|
base_Mbongo_score2$Q29C=="TENU DE PROCTECTION"|base_Mbongo_score2$Q29C=="DESINFECTION"|
base_Mbongo_score2$Q29C=="ISOLEMENT",1,0)+ifelse(base_Mbongo_score2$Q29A=="PORT DU MASQUE"|
base_Mbongo_score2$Q29A=="PORT DES GANTS"|base_Mbongo_score2$Q29A=="UTILISATION DU GEL"|
base_Mbongo_score2$Q29A=="DESEINFECTION"|base_Mbongo_score2$Q29A=="DISTANCIATION"|
base_Mbongo_score2$Q29A=="TENU DE PROCTECTION"|base_Mbongo_score2$Q29A=="DESINFECTION"|
base_Mbongo_score2$Q29A=="ISOLEMENT",1,0)
> base_Mbongo_score2$score_prevention <-ifelse(base_Mbongo_score2$vi_prevention<=0,0,ifelse(base_Mbongo_score2$vi_prevention>=2 
& base_Mbongo_score2$vi_prevention<=5,1,
ifelse(base_Mbongo_score2$vi_prevention>=6 & base_Mbongo_score2$vi_prevention<=9,2,3)))
> base_Mbongo_score2$score_prevention <-ifelse(base_Mbongo_score2$vi_prevention<=1,0,
ifelse(base_Mbongo_score2$vi_prevention>=2 & base_Mbongo_score2$vi_prevention<=5,1,ifelse(base_Mbongo_score2$vi_prevention>=6 & base_Mbongo_score2$vi_prevention<=9,2,3)))
> base_Mbongo_score2$score_finale <-base_Mbongo_score2$score_generale+base_Mbongo_score2$score_diagnostique+base_Mbongo_score2$score_prevention
> write_sav(base_Mbongo_score2,"base_Mbongo_SVM.sav")