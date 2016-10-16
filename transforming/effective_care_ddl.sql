DROP TABLE EffectiveCare2;

CREATE TABLE EffectiveCare2 AS SELECT ProviderID, HospitalName, State, Score, MeasureID, MeasureName from EffectiveCare where length(score) < 5;