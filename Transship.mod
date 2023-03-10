set FACTORY; # factories
set WAREHOUSE; # warehouses
set CITY; # destinations
param production {FACTORY} >= 0; # production capacity at factories
param supply {WAREHOUSE} >= 0; # storage capacity at warehouses
param demand {CITY} >= 0; # demand at destinations

#distance between factory and warehouse 
param distance1 {FACTORY,WAREHOUSE} >= 0; 
#distance between warehouse and city
param distance2 {WAREHOUSE,CITY} >= 0; 
#cost for factory and warehouse 
param cost1 {FACTORY,WAREHOUSE} >= 0; 
#cost warehouse and city
param cost2 {WAREHOUSE,CITY} >= 0; 
#cost of installation
param install {WAREHOUSE,CITY} >= 0;
#cost of annual maintenance
param maintain {WAREHOUSE,CITY} >= 0;

# units to be shipped From_factory_to_warehouse
var From_factory_to_warehouse {FACTORY,WAREHOUSE} >= 0; 
# units to be shipped From_warehouse_to_city
var From_warehouse_to_city {WAREHOUSE,CITY} >= 0; 

#objective function
minimize Total_Cost:
sum {i in FACTORY, j in WAREHOUSE} distance1[i,j] * cost1[i,j] * From_factory_to_warehouse[i,j] + 
sum {j in WAREHOUSE, k in CITY} distance2[j,k] * cost2[j,k] * From_warehouse_to_city[j,k] +
sum {j in WAREHOUSE, k in CITY} install[j,k] * From_warehouse_to_city[j,k] + 
sum {j in WAREHOUSE, k in CITY} maintain[j,k] * From_warehouse_to_city[j,k];

subject to Production {i in FACTORY}:
sum {j in WAREHOUSE} From_factory_to_warehouse[i,j] = production[i];

subject to Supply {j in WAREHOUSE}:
sum {i in FACTORY} From_factory_to_warehouse[i,j] = supply[j];

subject to SSupply {j in WAREHOUSE}:
sum {k in CITY} From_warehouse_to_city[j,k] = supply[j];

subject to Demand {k in CITY}:
sum {j in WAREHOUSE} From_warehouse_to_city[j,k] = demand[k];

check: sum {i in FACTORY} production[i] = sum {j in WAREHOUSE} supply[j];
check: sum {j in WAREHOUSE} supply[j] = sum {k in CITY} demand[k];