PewData <- read.csv("./Pew Data.csv")

PewDataFactors <- PewData
PewDataFactors["sample"] <- factor(PewDataFactors[,"sample"], 
                                   levels=c(1,2), labels=c("Landline", "Cell"))
PewDataFactors["ilang"] <- factor(PewDataFactors[,"ilang"], 
                                  levels=c(1,2), labels = c("English", "Spanish"))
PewDataFactors["cregion"] <- factor(PewDataFactors[,"cregion"])
PewDataFactors["usr"] <- factor(PewDataFactors[,"usr"], 
                                levels=c(1,2,3), labels = c("Rural", "Suburban", "Urban"))
PewDataFactors["presapprovestrength"] <- factor(PewDataFactors[,"presapprovestrength"], 
                                                levels=c(1,2), labels = c("Very strongly", "Not so strongly"))
PewDataFactors["countrydirection"] <- factor(PewDataFactors[,"countrydirection"], 
                                             levels=c(1,2), labels = c("Satisfied", "Dissatisfied"))
PewDataFactors["obamatough"] <- ordered(PewDataFactors[,"obamatough"],  # Note making these ordered
                                      levels=c(1,3,2), labels = c("Too tough","About right","Not tough enough"))
# Order all the "Very favorable"/"Mostly favorable"/Mostly unfavorable"/"Very unfavorable"
levelLabels <- c("approverepublicans", "approvedemocrats", "approvesupremecourt", "approvecongress")
PewDataFactors[levelLabels] <- lapply(PewDataFactors[levelLabels], ordered, # Note making these ordered
                  levels=c(4,3,2,1), 
                  labels = c("Very unfavorable", "Mostly unfavorable","Mostly favorable","Very favorable"))
PewDataFactors["supremecourtideology"] <- factor(PewDataFactors[,"supremecourtideology"], 
                                levels=c(1,2,3), labels = c("Conservative", "Middle", "Liberal"))
PewDataFactors["supremecourtpower"] <- ordered(PewDataFactors[,"supremecourtpower"],  # Note making these ordered
                                        levels=c(2,3,1), labels = c("Too little","About Right","Too Much"))
PewDataFactors["equalrights"] <- factor(PewDataFactors[,"equalrights"], 
                                             levels=c(1,2,5), labels = c("Done", "Continue", "Neither"))
PewDataFactors["militarydiplomacy"] <- factor(PewDataFactors[,"militarydiplomacy"], 
                                        levels=c(1,2,5), labels = c("Military", "Diplomacy", "Neither"))
PewDataFactors["racismproblem"] <- ordered(PewDataFactors[,"racismproblem"], # Note making these ordered
                                               levels=c(4,3,2,1), labels = c("None","Small","Some", "Big"))
PewDataFactors["knowirandeal"] <- ordered(PewDataFactors[,"knowirandeal"], # Note making these ordered
                                           levels=c(3,2,1), labels = c("Nothing","Little","Lot"))
PewDataFactors["relationshipirandeal"] <- ordered(PewDataFactors[,"relationshipirandeal"], # Note making these ordered
                                              levels=c(2,3,1), labels = c("Worse","Same","Improve"))
# All the "Approve"/"Disapprove" values
# Added groundtroopsyria approveendingembargo
levelLabels <- c("presapproval", "approverace", "approveeconomy", "approvehealthcare", "approveclimate", "approveforeign", 
                 "approveirandeal", "approveaca", "approvesyria", "groundtroopssyria", "approvecuba", "approveendingembarago")
PewDataFactors[levelLabels] <- lapply(PewDataFactors[levelLabels], 
                                      factor, levels=c(1,2), labels = c("Approve", "Disapprove"))
# All the "Republican"/"Democratic"/"Both"/"Neither values
levelLabels <- c("extremerepdem", "peoplelikemerepdem", "managegovrepdem", "governsrepdem", "immigrationrepdem", "economyrepdem", "terroristrepdem", "environmentrepdem", "abortionrepdem", "taxesrepdem", "foreignrepdem", "healthcarerepdem", "educationrepdem", "deficitrepdem", "gunsrepdem")
PewDataFactors[levelLabels] <- lapply(PewDataFactors[levelLabels], factor,
                                      levels=c(1,2,3,4), 
                                      labels = c("Republican", "Democratic","Both","Neither"))
PewDataFactors["samesexmarriage"] <- ordered(PewDataFactors[,"samesexmarriage"], # Note making these ordered
                        levels=c(1,2,3,4), labels = c("Strongly favor","Favor","Oppose", "Strongly oppose"))
PewDataFactors["gunrights"] <- factor(PewDataFactors[,"gunrights"], 
                        levels=c(1,2), labels = c("Protect", "Control"))
PewDataFactors["owngun"] <- factor(PewDataFactors[,"owngun"], 
                        levels=c(1,2,3,4), labels = c("Repondent", "Someone", "Both", "None"))
PewDataFactors["successsyria"] <- ordered(PewDataFactors[,"successsyria"],  # Note making these ordered
                        levels=c(1,2,3,4), labels = c("Definitely succeed","Probably succeed","Probably fail", "Definitely fail"))
PewDataFactors["knowconfederate"] <- ordered(PewDataFactors[,"knowconfederate"], # Note making these ordered
                                          levels=c(3,2,1), labels = c("Nothing","Little","Lot"))
PewDataFactors["approveconfederate"] <- factor(PewDataFactors[,"approveconfederate"], 
                                             levels=c(1,2,3), labels = c("Positive","Negative","Neither"))
PewDataFactors["rightconfederate"] <- factor(PewDataFactors[,"rightconfederate"], 
                                               levels=c(1,2), labels = c("Right","Wrong"))
PewDataFactors["sex"] <- factor(PewDataFactors[,"sex"], # Demographic Data
                                             levels=c(1,2), labels = c("Male","Female"))
PewDataFactors["education"] <- ordered(PewDataFactors[,"education"], # Note making these ordered
            levels=c(1:8), labels = c("No HS","Some HS","HS", "Some College", "Two Yr", "Four Yr", "Some Grad", "Graduate"))
PewDataFactors["hispanic"] <- factor(PewDataFactors[,"hispanic"], 
                                levels=c(1,2), labels = c("Yes","No"))
PewDataFactors["racecmb"] <- factor(PewDataFactors[,"racecmb"], 
            levels=c(1:8), labels = c("White","Black","Asian", "Other", "Native", "Pacific", "Hispanic", "Unknown"))
PewDataFactors["religion"] <- factor(PewDataFactors[,"religion"], 
            levels=c(1:14), labels = c("Protestant","Catholic","Mormon", "Orthodox", "Jewish", "Muslim", "Buddhist", 
                                       "Hindu", "Atheist", "Agnostic", "Other", "Nothing", "Christian", "Unitarian"))
PewDataFactors["attend"] <- ordered(PewDataFactors[,"attend"], # Note making these ordered
                levels=c(6:1), labels = c("Never","Seldom","Few", "Month", "Week", "Several"))
PewDataFactors["income"] <- ordered(PewDataFactors[,"income"], # Note making these ordered
                                    levels=c(1:9), labels = c("0_10","10_20","20_30", "30_40", "40_50", "50_75",
                                                              "75_100", "100_150", "150_+"))
PewDataFactors["registered"] <- ordered(PewDataFactors[,"registered"], # Note making these ordered
                                      levels=c(3:1), labels = c("Not","Probably","Certain"))
PewDataFactors["party"] <- factor(PewDataFactors[,"party"], 
                              levels=c(1:5), labels = c("Republican","Democrat","Independent", "None", "Other"))
PewDataFactors["ideology"] <- ordered(PewDataFactors[,"ideology"], # Note making these ordered
                              levels=c(1:5), labels = c("Very Conservative","Conservative","Moderate", "Liberal", "Veru Liberal"))
PewDataFactors["teaparty2"] <- factor(PewDataFactors[,"teaparty2"], 
                              levels=c(1:3), labels = c("Agree","Disagree","None"))
remove(levelLabels)
