DROP TABLE Hospitals;

CREATE EXTERNAL TABLE Hospitals (
ProviderID int, 
HospitalName varchar(255),
Address varchar(255),
City varchar(255),
State varchar(255),
ZIPCode int,
CountyName varchar(255),
PhoneNumber varchar(255),
HospitalType varchar(255),
HospitalOwnership varchar(255),
EmergencyServices varchar(255)
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde' 
WITH SERDEPROPERTIES (
"separatorChar" = ",", 
"quoteChar" = '"',
"escapeChar" = '\\' 
)
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare/hospitals';

DROP TABLE Measures;

CREATE EXTERNAL TABLE Measures (
MeasureName varchar(255),
MeasureID varchar(255),
MeasureStartQuarter varchar(255),
MeasureStartDate timestamp,
MeasureEndQuarter varchar(255),
MeasureEndDate timestamp
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde' 
WITH SERDEPROPERTIES (
"separatorChar" = ",", 
"quoteChar" = '"',
"escapeChar" = '\\' 
)
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare/measures';

DROP TABLE Readmissions;

CREATE EXTERNAL TABLE Readmissions (
ProviderID int,
HospitalName varchar(255),
Address varchar(255),
City varchar(255),
State varchar(255),
ZIPCode int,
CountyName varchar(255),
PhoneNumber varchar(255),
MeasureName varchar(255),
MeasureID varchar(255),
ComparedtoNational varchar(255),
Denominator int,
Score float,
LowerEstimate float,
HigherEstimate float,
Footnote varchar(255),
MeasureStartDate date,
MeasureEndDate date
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde' 
WITH SERDEPROPERTIES (
"separatorChar" = ",", 
"quoteChar" = '"',
"escapeChar" = '\\' 
)
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare/readmissions';

DROP TABLE EffectiveCare;

CREATE EXTERNAL TABLE EffectiveCare (
ProviderID int,
HospitalName varchar(255),
Address varchar(255),
City varchar(255),
State varchar(255),
ZIPCode int,
CountyName varchar(255),
PhoneNumber varchar(255),
Condition varchar(255),
MeasureID varchar(255),
MeasureName varchar(255),
Score int,
Sample int,
Footnote varchar(255),
MeasureStartDate date,
MeasureEndDate date
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde' 
WITH SERDEPROPERTIES (
"separatorChar" = ",", 
"quoteChar" = '"',
"escapeChar" = '\\' 
)
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare/effective_care';

DROP TABLE SurveyResponses;

CREATE EXTERNAL TABLE SurveyResponses (
ProviderNumber int,
HospitalName varchar(255),
Address varchar(255),
City varchar(255),
State varchar(255),
ZIPCode int,
CountyName varchar(255),
CommunicationwithNursesAchievementPoints varchar(255),
CommunicationwithNursesImprovementPoints varchar(255),
CommunicationwithNursesDimensionScore varchar(255),
CommunicationwithDoctorsAchievementPoints varchar(255),
CommunicationwithDoctorsImprovementPoints varchar(255),
CommunicationwithDoctorsDimensionScore varchar(255),
ResponsivenessofHospitalStaffAchievementPoints varchar(255),
ResponsivenessofHospitalStaffImprovementPoints varchar(255),
ResponsivenessofHospitalStaffDimensionScore varchar(255),
PainManagementAchievementPoints varchar(255),
PainManagementImprovementPoints varchar(255),
PainManagementDimensionScore varchar(255),
CommunicationaboutMedicinesAchievementPoints varchar(255),
CommunicationaboutMedicinesImprovementPoints varchar(255),
CommunicationaboutMedicinesDimensionScore varchar(255),
CleanlinessandQuietnessofHospitalEnvironmentAchievementPoints varchar(255),
CleanlinessandQuietnessofHospitalEnvironmentImprovementPoints varchar(255),
CleanlinessandQuietnessofHospitalEnvironmentDimensionScore varchar(255),
DischargeInformationAchievementPoints varchar(255),
DischargeInformationImprovementPoints varchar(255),
DischargeInformationDimensionScore varchar(255),
OverallRatingofHospitalAchievementPoints varchar(255),
OverallRatingofHospitalImprovementPoints varchar(255),
OverallRatingofHospitalDimensionScore varchar(255),
HCAHPSBaseScore int,
HCAHPSConsistencyScore int
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde' 
WITH SERDEPROPERTIES (
"separatorChar" = ",", 
"quoteChar" = '"',
"escapeChar" = '\\' 
)
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare/survey_responses';

