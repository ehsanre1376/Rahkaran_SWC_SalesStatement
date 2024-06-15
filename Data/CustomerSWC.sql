SELECT
      C.CustomerId
     ,C.PartyRef
     ,C.Number
     ,C.SecondCode
     ,C.ExchangeCode
     ,P.FullName
     ,P.NationalId
     ,CA.CustomerAddressId
     ,A.AccountId
  FROM    Sls3.Customer AS C
      JOIN Gnr3.Party AS P
        ON C.PartyRef = P.PartyId
      LEFT JOIN Sls3.CustomerAddress AS CA
        ON C.CustomerId = CA.CustomerRef
          AND
          CA.IsDefault = 1
          AND
          CA.State=1
          AND
          CA.Type=1 --تحویل کالا
      Left JOIN Fin3.Account AS A
        ON P.PartyId = A.PartyRef
          AND
          A.AccountTypeRef=2 --نقدی









