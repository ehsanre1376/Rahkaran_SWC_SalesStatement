SELECT
      DISTINCT 
      P.ProductId
     ,P.PartRef
     ,P.UnitRef
     ,Partname=P.Name
     ,UnitName =U.Name
  --top 

  FROM    Sls3.SalesStatementItem AS SSI
      JOIN Sls3.Product AS P
        ON SSI.ProductRef = P.ProductId
      JOIN Gnr3.Unit AS U
        ON SSI.ProductUnitRef = U.UnitId

--where 
--GROUP BY 
--HAVING 
--ORDER BY  DESC;

 