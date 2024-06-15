SELECT
DISTINCT
      P.ProductId
     ,P.PartRef
     ,P.UnitRef
     ,Partname=P.Name
     ,UnitName =U.Name
     ,SS.InventoryRef
     ,SS.PlantRef
     ,SS.SalesAreaRef
     ,SS.SalesOfficeRef
     ,SS.SellerBrokerRef
     ,SS.PaymentAgreementRef
     ,SS.SalesTypeRef
  --  --top 

  FROM    Sls3.SalesStatementItem AS SSI
      JOIN Sls3.Product AS P
        ON SSI.ProductRef = P.ProductId
      JOIN Gnr3.Unit AS U
        ON SSI.ProductUnitRef = U.UnitId
      JOIN Sls3.SalesStatement AS SS
        ON SSI.SalesStatementRef = SS.SalesStatementId
  --
  --
  WHERE SS.InventoryRef IS NOT NULL
----GROUP BY 
--HAVING 
--ORDER BY  DESC;

