// 01. Create people
UNWIND RANGE(1,30) AS row
UNWIND RANGE(1,30) AS column
CREATE (p:Person {row:row, column:column, 
     coordinates:toString(column) + ', ' + toString(row)});