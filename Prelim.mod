set WAREHOUSE; #warehouse
set CITY; #destinations

param supply {WAREHOUSE} >= 0; # storage capacity at warehouse
param demand {CITY} >= 0; # demand at destinations

#distance between warehouseand city
param distance {WAREHOUSE,CITY} >= 0; 

# units to be shipped From_warehouse_to_city
var From_warehouse_to_city {WAREHOUSE,CITY} >= 0; 

#objective function
minimize Total_Cost: 
sum {i in WAREHOUSE, j in CITY} distance[i,j] * From_warehouse_to_city[i,j];

#Constraint 1
subject to SSupply {i in WAREHOUSE}:
sum {j in CITY} From_warehouse_to_city[i,j] = supply[i];

#Constraint 2
subject to Demand {j in CITY}:
sum {i in WAREHOUSE} From_warehouse_to_city[i,j] = demand[j];

#Constraint 3
check: sum {i in WAREHOUSE} supply[i] >= sum {j in CITY} demand[j];







