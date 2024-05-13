SELECT
      C.CustomerId
     ,C.PartyRef
     ,C.Number
     ,C.SecondCode
     ,C.ExchangeCode
     ,P.FullName
     ,P.NationalId
     ,ca.CustomerAddressId
  FROM    Sls3.Customer AS C
      JOIN Gnr3.Party AS P
        ON C.PartyRef = P.PartyId
      LEFT JOIN Sls3.CustomerAddress AS CA
        ON C.CustomerId = CA.CustomerRef
          AND
          CA.IsDefault = 1



