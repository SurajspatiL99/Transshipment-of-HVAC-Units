 



 



 



 



 



 



 



 



 



Optimization of HVAC Units: Minimizing Cost and



Maximizing Supply



 



 



Group
3



Suraj
Patil | Shubham Pandya | Livya Kanwal | Sonali Godade



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



 



Abstract

This project was developed
with the aim of minimizing the cost of transportation of HVAC units in the
state of Massachusetts. Although it may seem like a simple problem, there are
many obstacles for optimizing the solution for ten locations. These obstacles
include and are not limited to transportation costs, installation costs, maintenance
costs, and ability to meet the demand. An integer linear program was then
developed and run through AMPL programming to solve the optimization problem.
This result was evaluated, and then skewed during sensitivity analysis.





Acknowledgement

We wish to acknowledge the
continuous support and help given by our course instructor, Professor Muhammad
Noor E Alam, and our course teaching assistant, Sahil Shikalgar. We thank both
parties for providing us with valuable guidance and for their teaching of
Operations Research over the course of the semester.



Thank you.



 



 



 



 



 



 



 



 



 



 



 



 



 







 




 Table of Contents
 Abstract 2


 Acknowledgement 3


 Table of Contents  4


 I. Introduction  5


 i. Project Statement 5


 ii. Background  5


 II. Literature Review   6


 i. Cost Parameters
 (Setup Costs, Production Costs, Transportation Costs) 6


 Transportation Costs  6


 Installation Cost 6


 Maintenance Cost 6


 III. Mathematical Model 7


 i.
 AMPL Model                                                                                                               7


 ii.
 Preliminary Mathematical Model                                                                             11


 iii.
 Final Mathematical Model                                                                                      13


 IV. Integer Linear Programming  16


 V. Sensitivity Analysis  16


 VI. Results  20


 i. Scenario i 20


 ii. Scenario ii 20


 VII. Future Scope and
 Improvement 21


 References                                                                                                                   22


  




I. Introduction

i. Project Statement

As the winter season is
approaching a lot newly constructed homes need a HVAC unit. This project is
aimed to minimize the cost of transportation of HVAC units in the state of
Massachusetts. This exercise was built based on operations research techniques
and was executed mathematically using the programming language AMPL.



This project started with a
thorough understanding of the current demand of HVAC units in the state of
Massachusetts. So that data can be collected to then formulate the objective
function and all the ancillary analysis needed. The data collection involved
finding out the average demand in various locations in Massachusetts, the
average transportation cost, the average cost of installation, and the average
cost of maintenance (per year) of one HVAC unit.



Following the prior steps,
a sensitivity analysis was conducted to determine any change in the objectives
based on changes to power supply and demand.



ii. Background

A literature review
on minimizing cost and maximizing profit for HVAC systems for houses in Boston
would focus on research that examines the various factors that impact the cost
and profitability of HVAC systems in the city.



One key area of
research in this area would be the cost of different HVAC systems and the
factors that influence their cost. This could include research on the initial
purchase price of different HVAC systems, as well as the ongoing costs
associated with their operation, maintenance, and repair. The review could also
consider research on the potential for cost savings through the use of
energy-efficient HVAC systems, as well as the potential for tax incentives and
other financial incentives that could help to reduce the cost of HVAC systems
in Boston.



Another important
area of research in this area would be the potential for maximizing profit
through the use of HVAC systems in Boston's residential buildings. This could
include research on the potential for using HVAC systems to increase the value
of a property, as well as the potential for using HVAC systems to reduce
operating costs and increase tenant satisfaction. The review could also
consider research on the potential for using HVAC systems to generate revenue
through the sale of excess energy, as well as the potential for using HVAC
systems to support the growth of new businesses and industries in the city.



Overall, a
literature review on minimizing cost and maximizing profit for HVAC systems for
houses in Boston would aim to provide a comprehensive overview of the existing
research on this topic, highlighting the key findings and identifying
opportunities for further research and innovation in this area.



 



II. Literature Review

i. Cost
Parameters (Setup Costs, Production Costs, Transportation Costs)

Transportation
Costs

A major cost incurred with delivering HVAC
units to consumers is the transportation cost. It costs between $1 to $4 to
transport 1 HVAC unit per mile depending on the location. This cost was also
included in the calculation of the final transportation cost.



Installation
Cost

The installation cost varies
from $1500 to $6000. This cost mainly depends on house size - the larger your
home, the squarer footage the HVAC units will need to heat or cool, the size of
the unit installed is determined by the amount of square footage of your home,
and if your home is large, location of the house and labour cost.



 



Maintenance Cost

Maintenance of a HVAC unit costs between $75
and $200 per year, depending on the contractor. This cost includes, checking the
blower motor, filters, belts, fins, refrigerant levels, and safety controls, testing
thermostat and carbon monoxide levels, adjust fins and belts, cleaning
condensate drain, coils, and burners, replacing air filter, and lubricating all
moving parts.



Another cost that is not included in the math
model is repair or replacement costs of parts as this cost is variable
depending on whether it is a total or partial replacement and if it is needed
at all.



III. Mathematical Model

This project is designed to
determine the minimal cost of transporting HVAC units from factories to
warehouses and then from warehouse to customer in the state of Massachusetts.
To find the optimal solution while also minimizing costs, transportation costs
must be low, and installation and maintenance costs also remain low while also
having the capability to meet the demand. The mathematical model was formulated
around this optimization problem, but also involved noting costs such as the
cost of installation, and cost of maintenance along with the aforementioned
cost of transportation.



This model includes some constraints, such as
the distance from the factory to the warehouse, the distance from the warehouse
to customers, the production capacity of the factories, the storage capacity of
various warehouses, and the demand for HVAC units in various locations.



AMPL Model



AMPL was used for solving the
problem. AMPL is an algebraic programming language that is used for solving
large and complex mathematical problems. To support our aim with this project,
it was implemented to solve the mathematical model by determining the minimum
cost for the maximum supply. The model and all of its constraints were
inputted, and an optimal result was found.



The
following parameters were used to construct and execute the model:



Pi
= Production capacity Factory i



        where i = {1,2,3} 



Sj = Supply
capacity of Warehouse j



        where j = {1,2,3,4} 



Nk = Demand
of city k



        where k = {1,2,3……….,10}



 



Xij = Number
of units transported from factory i to warehouse j



       where i = {1,2,3} and j = {1,2,3,4}



Yjk = Number
of units transported from warehouse j to city k



        where j = {1,2,3,4} and k =
{1,2,3……….,10}



 



Dij = Distance
in miles from factory i to warehouse j



       where i = {1,2,3} and j = {1,2,3,4}



Ejk = Distance in miles from warehouse j to city k



        where j = {1,2,3,4} and k =
{1,2,3……….,10}



 



Tij = Transportation
cost for transporting 1 HVAC unit from factory i to warehouse j



       where i = {1,2,3} and j = {1,2,3,4}



Ujk = Transportation cost for transporting 1 HVAC unit from warehouse j to
city k



        where j = {1,2,3,4} and k =
{1,2,3……….,10}



Ijk = Installation cost for when 1 HVAC unit is supplied from warehouse j
to city k



        where j = {1,2,3,4} and k =
{1,2,3……….,10}



 



Mjk = maintenance cost for when 1 HVAC unit is supplied from warehouse j
to city k



        where j = {1,2,3,4} and k =
{1,2,3……….,10}





Data:
-




 
 
  
  
  
  
  
  
  
  
  
  
  
  
 
 
 

 




Table 1: Distance from warehouse to city



 




 




Table 2: Distance from factory to warehouse



 




 




Table 3: Transportation Costs (factory to warehouse)



 




 




Table 4: Transportation Costs (warehouse to city)




 




Table 5: Installation Costs (warehouse to city)



 




 




Table 6: Maintenance costs (warehouse to city)



 






 
  
  Factory


  
  
  Capacity


  
  
   


  
  
  Warehouse


  
  
  Capacity


  
  
   


  
  
  Destination


  
  
  Demand


  
 
 
  
  Brockton


  
  
  160


  
  
   


  
  
  Lawrence


  
  
  80


  
  
   


  
  
  Boston


  
  
  90


  
 
 
  
  Haverhill


  
  
  130


  
  
   


  
  
  Lynn


  
  
  90


  
  
   


  
  
  Brookline


  
  
  30


  
 
 
  
  Plymouth


  
  
  140


  
  
   


  
  
  Newton


  
  
  120


  
  
   


  
  
  Cambridge


  
  
  65


  
 
 
  
   


  
  
   


  
  
   


  
  
  Worcester


  
  
  140


  
  
   


  
  
  Framingham


  
  
  35


  
 
 
  
   


  
  
   


  
  
   


  
  
   


  
  
   


  
  
   


  
  
  Lowell


  
  
  45


  
 
 
  
   


  
  
   


  
  
   


  
  
   


  
  
   


  
  
   


  
  
  Malden


  
  
  35


  
 
 
  
   


  
  
   


  
  
   


  
  
   


  
  
   


  
  
   


  
  
  Medford


  
  
  25


  
 
 
  
   


  
  
   


  
  
   


  
  
   


  
  
   


  
  
   


  
  
  Quincy


  
  
  40


  
 
 
  
   


  
  
   


  
  
   


  
  
   


  
  
   


  
  
   


  
  
  Somerville


  
  
  35


  
 
 
  
   


  
  
   


  
  
   


  
  
   


  
  
   


  
  
   


  
  
  Waltham


  
  
  30


  
 






Table 7,8,9: Units supplied from warehouse to city & demand required
in each city



 



 



The objective function was developed using
the following cost factors:




 





 





 




 



 



The objective function of minimizing cost
was found to be:



 




 




i.e.,




 




 



There were many constraints that came with
developing this model. They are as follows:



 



Production constraints: -   
 
 




 





 





 




 



Supply constraints: - 
 





 





 





 





 




Demand
Constraints: - 
 





 





 





 





 





 





 





 





 





 





 




 



Non-negativity constraints: -




 




where
i = {1,2,3}, j = {1,2,3,4}, and k = {1,2,3……….,10} 



 



Also, Total no. of HVAC units coming in warehouse j
should be equal to total no. of HVAC units leaving in warehouse j.




 




 



Preliminary
Mathematical Model 



 



1.    
Assumptions and
justifications 



The assumptions for the
preliminary model are that the HVAC units are only being transported from
warehouses to cities (customers). The storage capacity of warehouses is equal
to the demand i.e., supply = demand. There is no installation and maintenance
cost involved. The cost of transportation is the same for all cities i.e., $1
per mile per unit.



 



2.    
Preliminary result analysis




Three different types
of files were created: a .mod file (model file), a .dat file (data file), and a
run file. The model file represents the Preliminary model itself, where the
standard integer linear program formulation and constraints were inputted. The
data file included all of the collected data in Tables 2, 3, and 5. This gives
the program data on to base its optimization. The run file connects the two so
the program is left with a solvable problem.




 
 
See the code below:



 



Figure 1: Preliminary AMPL Model File




 
 




Figure 2: Preliminary AMPL Data File 




 
 

 
 




           




 



 



 



 



 



Figure 3: Preliminary AMPL Run File. 



 



 



 



 






 
  
  Xjk


  
  
  Lawrence


  
  
  Lynn


  
  
  Newton


  
  
  Worcester


  
 
 
  
  Boston


  
  
  0


  
  
  55


  
  
  35


  
  
  0


  
 
 
  
  Brookline


  
  
  0


  
  
  0


  
  
  30


  
  
  0


  
 
 
  
  Cambridge


  
  
  0


  
  
  0


  
  
  0


  
  
  65


  
 
 
  
  Framingham


  
  
  0


  
  
  0


  
  
  35


  
  
  0


  
 
 
  
  Lowell


  
  
  45


  
  
  0


  
  
  0


  
  
  0


  
 
 
  
  Malden


  
  
  0


  
  
  35


  
  
  0


  
  
  0


  
 
 
  
  Medford


  
  
  5


  
  
  0


  
  
  20


  
  
  0


  
 
 
  
  Quincy


  
  
  0


  
  
  0


  
  
  0


  
  
  40


  
 
 
  
  Somerville


  
  
  30


  
  
  0


  
  
  0


  
  
  5


  
 
 
  
  Waltham


  
  
  0


  
  
  0


  
  
  0


  
  
  30


  
 
 
  
   


  
  
   


  
  
   


  
  
   


  
  
   


  
 






                      Table 10: Units
transported from factory to warehouse



The above
table displays the solution obtained for the preliminary problem from AMPL.
According to the solution, it will take at least $7,855 to fulfil the demands
in every city. 



3.    
Limitations of the model



Firstly, this is only a basic transportation problem where HVAC
units are moved from the warehouse to different cities. Whereas the real
problem is to move the HVAC units from factories to warehouses and then from
warehouses to different cities as per demand. Secondly, here it is assumed that
the installation cost and maintenance cost is zero. Lastly, the transportation
cost is also assumed to be the same for moving one HVAC unit.



Final
Mathematical Model        



                



1.    
Assumptions and
justifications 



The assumptions for the final model are that
the HVAC units are first transported from factories to warehouses and then from
warehouses to cities (customers). The production capacities of the factories
and the storage capacity of warehouses can be greater than demand, but not vice
versa. The amount units which are coming in a warehouse has to be delivered to
the customer. There is an installation and maintenance cost involved which
depends on the location. The cost of transportation is not the same for all
cities, it varies depending on the distance from factories or warehouses.



If the distance is in the range of 0 to 24
the transportation cost is $1 per mile per unit



If the distance is in the range of 25 to 49
the transportation cost is $2 per mile per unit



If the distance is in the range of 50 to 74
the transportation cost is $3 per mile per unit



If the distance is in the range of 75 or
more the transportation cost is $4 per mile per unit



 



 



 



 



2.    
Result display and
analysis



 



The model file
represents the final model itself, where the standard integer linear program
formulation and constraints were inputted. 



 




 




Figure
4: AMPL Model File



 




 




Figure
5: AMPL Data File



 



 




 




Figure 6: AMPL Run File



 



 



 



 



The following tables show
the no. of units moving from factory to warehouse and then from warehouse to
city. 



 



 




 
  
  Factory to Warehouses


  
  
  
  
  
 
 
  
  Xij


  
  
  Lawrence


  
  
  Lynn


  
  
  Newton


  
  
  Worcester


  
 
 
  
  Brockton


  
  
  0


  
  
  90


  
  
  70


  
  
  0


  
  
  160


  
 
 
  
  Haverhill


  
  
  80


  
  
  0


  
  
  0


  
  
  50


  
  
  130


  
 
 
  
  Plymouth


  
  
  0


  
  
  0


  
  
  50


  
  
  90


  
  
  140


  
 
 
  
  
  80


  
  
  90


  
  
  120


  
  
  140


  
  
 
 
  
  Warehouse to Cities


  
  
  
  
  
 
 
  
  Xjk


  
  
  Lawrence


  
  
  Lynn


  
  
  Newton


  
  
  Worcester


  
 
 
  
  Boston


  
  
  0


  
  
  60


  
  
  30


  
  
  0


  
  
  90


  
 
 
  
  Brookline


  
  
  0


  
  
  0


  
  
  30


  
  
  0


  
  
  30


  
 
 
  
  Cambridge


  
  
  0


  
  
  0


  
  
  0


  
  
  65


  
  
  65


  
 
 
  
  Framingham


  
  
  0


  
  
  0


  
  
  35


  
  
  0


  
  
  35


  
 
 
  
  Lowell


  
  
  45


  
  
  0


  
  
  0


  
  
  0


  
  
  45


  
 
 
  
  Malden


  
  
  5


  
  
  30


  
  
  0


  
  
  0


  
  
  35


  
 
 
  
  Medford


  
  
  0


  
  
  0


  
  
  25


  
  
  0


  
  
  25


  
 
 
  
  Quincy


  
  
  0


  
  
  0


  
  
  0


  
  
  40


  
  
  40


  
 
 
  
  Somerville


  
  
  30


  
  
  0


  
  
  0


  
  
  5


  
  
  35


  
 
 
  
  Waltham


  
  
  0


  
  
  0


  
  
  0


  
  
  30


  
  
  30


  
 
 
  
  
  80


  
  
  90


  
  
  120


  
  
  140


  
  
 



 



Table 11: Units transported from
factory to warehouses & vice-versa



 



The above table displays
the solution obtained for the final transshipment problem from AMPL. According
to the solution, it will take at least $ 523,475 to fulfil the demands in every city. This cost includes the cost of
transporting HVAC units from factories to warehouses and from warehouses to
customers, installation costs, and maintenance costs for each unit.  



 



 



IV.
Integer Linear Programming

The goal was to
minimize the cost required to transport HVAC units from factories to warehouses
and then from warehouses to customers in the state of Massachusetts. There are
many other factors affecting the model like the population of the locations,
the cost of manufacturing HVAC units, size of a house, and demand ratios.



 



V. Sensitivity Analysis

A
sensitivity analysis is a tool used in financial modelling to evaluate how the
uncertainty in the input variables of a model affects the output of the model.
In this case, a sensitivity analysis was conducted to account for the
likelihood that the predicted demand for HVAC units may not be equal to the
actual demand.



The
analysis assumed that 70% of the predicted demand would be met, and that the
transportation and installation costs would be increased by 10%. This sensitivity analysis allows for a better understanding of the
potential risks and uncertainties associated with the demand for HVAC units. It
also provides a basis for making more informed decisions about the production
and distribution of these units.     



                  



 



 



 




 
 

 
 




 



 



 



Table 12,13: Demand of
Destination & Transportation cost/mile.



 




 
Table 14: Transportation cost/mile from
warehouse to city




 




Table 15: Installation costs/unit from warehouse to city



 



 



 



 



 



 



 



 



With this, the new
values were taken into consideration and a new minimum cost was found using
AMPL:



AMPL Model
for Sensitivity Analysis



1. The Sensitivity Analysis Model File:




 




Figure 7: AMPL Model File
(2) 2.   The
Sensitivity Analysis Data File:




 




Figure
8: AMPL Data File (2)



3. The Sensitivity Analysis Run File:




 




Figure
9: AMPL Run File (2)



 




 




Table 16: Units transported from factory to warehouses &
vice-versa after sensitivity analysis



 



The table shows the solution to the final transhipment
problem from AMPL. The solution indicates that it will cost at least $ 395011.4
to fulfil the new demands in each city. This cost includes the cost of
transporting HVAC units from factories to warehouses and from warehouses to
customers, as well as installation and maintenance costs for each unit.



VI.
Results

i. Scenario i

The optimal solution was found, and it will take at
least $ 523,475 to fulfil the demands in every city where factory Brockton supplies
90 & 70 units to Lynn and Newton warehouses, Haverhill factory supplies 80
and 50 units to Lawrence and Worcester and Plymouth factory supplies 50 &
90 units to Newton and Worcester to fulfil supply
and demand. 



For warehouse to cities
goods flow, Lynn warehouse will supply 7 & 25 units to Boston and Malden.
Lawrence warehouse will supply 32 & 25 units to Lowell and Somerville,
additionally it will supply 21 units to Waltham. Newton warehouse will supply 56,
21, 25 and 18 units to Boston, Brookline, Framingham,
and Medford. Worcester warehouse will supply 46 & 28 units to Cambridge
& Quincy and would not supply any units to Somerville and Waltham.



 



ii. Scenario ii

After conducting
sensitivity analysis on the data, the optimal solution
indicates that it will cost at least $ 395011.4 to fulfil the new demands in
each city. We observed some changes in locations while performing
warehouse to cities flow of goods. Lynn warehouse will
supply 60 & 30 units to Boston and Madlen. Lawrence warehouse will supply
45 & 30 units to Lowell and Somerville. Newton warehouse will supply 30,
30, 35 and 25 units to Boston, Brookline, Framingham, and Medford. Worcester
warehouse will supply 65,40 & 30 units to Cambridge and Quincy, Somerville
and Waltham to fulfil demand of each city.



 



 



 



 



 



.



VII. Future Scope and
Improvement

Some potential
areas for future work in this field could include:




 Developing new and improved
     optimization algorithms for HVAC unit transportation that can more effectively
     balance the competing goals of minimizing cost and maximizing supply. This
     could involve the use of advanced techniques such as machine learning and
     artificial intelligence to identify optimal solutions in complex and
     dynamic environments.



 




 Investigating the potential for
     using HVAC units as a source of renewable energy, through the use of
     advanced technologies such as solar panels, wind turbines, and fuel cells.
     This could involve the development of new models and algorithms that can
     optimize the deployment of HVAC units in a way that maximizes their
     potential as renewable energy generators.



 



 




 Examining the potential for using
     HVAC units to support the growth of new businesses and industries in urban
     areas, through the provision of heating, cooling, and ventilation
     services. This could involve the development of new models and algorithms
     that can optimize the deployment of HVAC units in a way that maximizes
     their potential to support the growth of new businesses and industries.



 



 



 



 



 



 



 



 



 



 



 



References



1.     Transportation
Economic Trends: Transportation Costs, U.S department of transportation, Bureau
of Transportation Statistics https://data.bts.gov/stories/s/Transportation-Economic-Trends-Transportation-Cost/2yqq-baqd



2.     Heating systems:
Department of Energy, https://www.energy.gov/energysaver/home-heating-systems



3.     Charted: Home
Heating Systems in the U.S. by Omri Wallach published on April 25 2022, https://elements.visualcapatalists.com/charted-home-heating-systems-in-the-u-s



4.     Transportation
System from ScienceDirect Journals & Books, https://www.sciencedirect.com/topics/computer-science/transportation-system



5.     Transportation
Costs for Businesses: The Breakdown published on May 3, 2022 by OptimoRoute,
https://optimoroute.com/transportation-costs/



 
