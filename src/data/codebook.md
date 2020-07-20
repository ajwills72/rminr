# Codebook

## PGKE_MAIN.csv

tblMainKey - Participant ID

PartId - Participant initials

Sequence - the trial sequence, where S is a sound trial and N is a no sound trial.

ExperimentStart - date and time of the experimental process start.

Status - 'In progress' or 'complete', indicating a full dataset.

## PGKE_DATA.csv

tblDataKey - unique row identifier 

tblMainKey - Participant ID, matching tblMainKey in PGKE_MAIN.csv 

ExpTimeStamp - time stamp during the experimental process in milliseconds. GSR is polled every 50ms. 

ExpType - type of value recorded:

  GS - GSR reading from sensor. Measured in uS.

  CO - Cylinder Onset (i.e. CS appears on screen). Expvalue ranges from -3 to +3, coding run length.

  ER - Expectation Rating (1-5, 5 is highest expectation, 0 = no response given)

  SO - SoundOnset (i.e. US presented on headphones). Expvalue always 0, as only a time stamp is required.
