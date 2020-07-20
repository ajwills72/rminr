## Technical issues

- The structure of rminr-data must be replicated inside src of rminr, otherwise sheets using rminr-data won't compile. 


## Bugs etc.

- Sheet does not compile, `case-studies/jon-may/big5_total.csv` does not exist in repo. 

- A dependency of apaTables is data.table, which doesn't work with the current version of R at the moment. 

- General `rminr-data` issue - if they try to 'pull' and have made local changes, it's potentially going to fail. 
