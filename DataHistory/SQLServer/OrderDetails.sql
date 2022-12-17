USE [ECM_Raw]
GO

INSERT INTO [NewData].[OrderDetails]
           ([OrderDetailId]
           ,[OrderId]
           ,[LineItem]
           ,[VehicleStockId]
           ,[SalePrice]
           ,[LineItemDiscount]
           ,[DerivedDiscountedSalePrice])
     VALUES
           (<OrderDetailId, int,>
           ,<OrderId, int,>
           ,<LineItem, tinyint,>
           ,<VehicleStockId, int,>
           ,<SalePrice, numeric(18,2),>
           ,<LineItemDiscount, numeric(18,2),>
           ,<DerivedDiscountedSalePrice, numeric(19,2),>)
GO

