SELECT
      C.CarrierId
     ,C.Code
     ,C.PartyRef
     ,P.FullName
  FROM    Lgs3.Carrier AS C
      JOIN Gnr3.Party AS P
        ON C.PartyRef = P.PartyId