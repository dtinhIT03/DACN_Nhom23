
drop database DBBanHangTMDT
USE [master]
GO

create database DBBanHangTMDT
Use DBBanHangTMDT
GO


CREATE TABLE [dbo].[account](
	[account_id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [nvarchar](100) NULL,
	[last_name] [nvarchar](100) NULL,
	[email] [varchar](100) NULL,
	[password] [varchar](100) NOT NULL,
	[address] [nvarchar](100) NULL,
	[role] [int] NULL,
	[phone_number] [varchar](100) NULL,
	[ngayTao] [datetime2](7) NOT NULL,
 CONSTRAINT [PK__account__46A222CDFF4E00BA] PRIMARY KEY CLUSTERED 
(
	[account_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cart]    Script Date: 16/06/2024 5:09:22 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cart](
	[cart_id] [int] IDENTITY(1,1) NOT NULL,
	[quantity] [int] NULL,
	[account_account_id] [int] NOT NULL,
	[product_product_id] [int] NULL,
	[ngayTao] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_cart] PRIMARY KEY CLUSTERED 
(
	[cart_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 16/06/2024 5:09:22 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[ngayTao] [datetime2](7) NOT NULL,
 CONSTRAINT [PK__Category__D54EE9B4945B45BA] PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 16/06/2024 5:09:22 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[order_id] [int] IDENTITY(1,1) NOT NULL,
	[total_price] [decimal](10, 2) NULL,
	[account_account_id] [int] NULL,
	[Payment_payment_id] [int] NULL,
	[Shipment_shipment_id] [int] NULL,
	[ngayTao] [datetime2](7) NOT NULL,
 CONSTRAINT [PK__Order__4659622970897440] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_item]    Script Date: 16/06/2024 5:09:22 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_item](
	[order_item_id] [int] IDENTITY(1,1) NOT NULL,
	[quantity] [int] NULL,
	[price] [decimal](10, 2) NULL,
	[product_product_id] [int] NULL,
	[order_order_id] [int] NOT NULL,
	[ngayTao] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_order_item_1] PRIMARY KEY CLUSTERED 
(
	[order_item_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 16/06/2024 5:09:22 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[payment_id] [int] IDENTITY(1,1) NOT NULL,
	[payment_method] [nvarchar](100) NULL,
	[ngayTao] [datetime2](7) NOT NULL,
 CONSTRAINT [PK__Payment__ED1FC9EA439D3D5C] PRIMARY KEY CLUSTERED 
(
	[payment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 16/06/2024 5:09:22 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[productCode] [varchar](100) NULL,
	[SKU] [varchar](100) NULL,
	[description] [nvarchar](max) NULL,
	[price] [decimal](10, 2) NULL,
	[name] [nvarchar](200) NULL,
	[size] [varchar](10) NULL,
	[color] [int] NULL,
	[quantity] [int] NULL,
	[stock] [int] NULL,
	[Category_category_id] [int] NULL,
	[Image] [varchar](500) NULL,
	[ngayTao] [datetime2](7) NOT NULL,
 CONSTRAINT [PK__Product__47027DF5E1A5B9CF] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ__Product__E96EB9A1AE113945] UNIQUE NONCLUSTERED 
(
	[productCode] ASC,
	[size] ASC,
	[color] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shipment]    Script Date: 16/06/2024 5:09:22 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shipment](
	[shipment_id] [int] IDENTITY(1,1) NOT NULL,
	[shipment_date] [datetime2](7) NULL,
	[address] [nvarchar](255) NULL,
	[city] [nvarchar](100) NULL,
	[state] [nvarchar](255) NULL,
	[country] [nvarchar](50) NULL,
	[zip_code] [varchar](10) NULL,
	[account_account_id] [int] NULL,
	[ngayTao] [datetime2](7) NOT NULL,
 CONSTRAINT [PK__shipment__41466E59DE04214D] PRIMARY KEY CLUSTERED 
(
	[shipment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[wishlist]    Script Date: 16/06/2024 5:09:22 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wishlist](
	[wishlist_id] [int] IDENTITY(1,1) NOT NULL,
	[account_account_id] [int] NOT NULL,
	[product_product_id] [int] NULL,
	[ngayTao] [datetime2](7) NOT NULL,
 CONSTRAINT [PK__wishlist__9E9220044B50615E] PRIMARY KEY CLUSTERED 
(
	[wishlist_id] ASC,
	[account_account_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[account] ADD  CONSTRAINT [DF__account__ngayTao__24927208]  DEFAULT (getdate()) FOR [ngayTao]
GO
ALTER TABLE [dbo].[cart] ADD  CONSTRAINT [DF__cart__ngayTao__412EB0B6]  DEFAULT (getdate()) FOR [ngayTao]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF__Category__ngayTa__276EDEB3]  DEFAULT (getdate()) FOR [ngayTao]
GO
ALTER TABLE [dbo].[Order] ADD  CONSTRAINT [DF__Order__ngayTao__36B12243]  DEFAULT (getdate()) FOR [ngayTao]
GO
ALTER TABLE [dbo].[order_item] ADD  CONSTRAINT [DF__order_ite__ngayT__3C69FB99]  DEFAULT (getdate()) FOR [ngayTao]
GO
ALTER TABLE [dbo].[Payment] ADD  CONSTRAINT [DF__Payment__ngayTao__2F10007B]  DEFAULT (getdate()) FOR [ngayTao]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF__Product__ngayTao__2B3F6F97]  DEFAULT (getdate()) FOR [ngayTao]
GO
ALTER TABLE [dbo].[shipment] ADD  CONSTRAINT [DF__shipment__ngayTa__32E0915F]  DEFAULT (getdate()) FOR [ngayTao]
GO
ALTER TABLE [dbo].[wishlist] ADD  CONSTRAINT [DF__wishlist__ngayTa__45F365D3]  DEFAULT (getdate()) FOR [ngayTao]
GO
ALTER TABLE [dbo].[cart]  WITH CHECK ADD  CONSTRAINT [cart_account] FOREIGN KEY([account_account_id])
REFERENCES [dbo].[account] ([account_id])
GO
ALTER TABLE [dbo].[cart] CHECK CONSTRAINT [cart_account]
GO
ALTER TABLE [dbo].[cart]  WITH CHECK ADD  CONSTRAINT [cart_product] FOREIGN KEY([product_product_id])
REFERENCES [dbo].[Product] ([product_id])
GO
ALTER TABLE [dbo].[cart] CHECK CONSTRAINT [cart_product]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [order_account] FOREIGN KEY([account_account_id])
REFERENCES [dbo].[account] ([account_id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [order_account]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [order_payment] FOREIGN KEY([Payment_payment_id])
REFERENCES [dbo].[Payment] ([payment_id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [order_payment]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [order_shipment] FOREIGN KEY([Shipment_shipment_id])
REFERENCES [dbo].[shipment] ([shipment_id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [order_shipment]
GO
ALTER TABLE [dbo].[order_item]  WITH CHECK ADD  CONSTRAINT [order_item_order] FOREIGN KEY([order_order_id])
REFERENCES [dbo].[Order] ([order_id])
GO
ALTER TABLE [dbo].[order_item] CHECK CONSTRAINT [order_item_order]
GO
ALTER TABLE [dbo].[order_item]  WITH CHECK ADD  CONSTRAINT [order_item_product] FOREIGN KEY([product_product_id])
REFERENCES [dbo].[Product] ([product_id])
GO
ALTER TABLE [dbo].[order_item] CHECK CONSTRAINT [order_item_product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [Product_Category] FOREIGN KEY([Category_category_id])
REFERENCES [dbo].[Category] ([category_id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [Product_Category]
GO
ALTER TABLE [dbo].[shipment]  WITH CHECK ADD  CONSTRAINT [shipment_account] FOREIGN KEY([account_account_id])
REFERENCES [dbo].[account] ([account_id])
GO
ALTER TABLE [dbo].[shipment] CHECK CONSTRAINT [shipment_account]
GO
ALTER TABLE [dbo].[wishlist]  WITH CHECK ADD  CONSTRAINT [wishlist_account] FOREIGN KEY([account_account_id])
REFERENCES [dbo].[account] ([account_id])
GO
ALTER TABLE [dbo].[wishlist] CHECK CONSTRAINT [wishlist_account]
GO
ALTER TABLE [dbo].[wishlist]  WITH CHECK ADD  CONSTRAINT [wishlist_product] FOREIGN KEY([product_product_id])
REFERENCES [dbo].[Product] ([product_id])
GO
ALTER TABLE [dbo].[wishlist] CHECK CONSTRAINT [wishlist_product]
GO
USE [master]
GO
ALTER DATABASE [DBBanHangTMDT] SET  READ_WRITE 
GO
-- Fake data for the Category table
INSERT INTO [dbo].[Category] ([name], [ngayTao]) VALUES 
('quần', '2023-05-10T16:50:00'),
('Electronics', '2023-01-01T10:00:00'),
('Books', '2023-02-15T11:30:00'),
('Clothing', '2023-03-20T14:45:00'),
('Home & Kitchen', '2023-04-05T09:15:00'),
('Toys & Games', '2023-05-10T16:50:00');
SELECT * FROM [dbo].[Category];
--DELETE FROM [dbo].Product;

-- thêm sản phẩm 
INSERT INTO Product (productCode, SKU, description, price, name, size, color, quantity, stock, Category_category_id, Image)
VALUES 
-- Áo khoác dù Paradox® SABLE - High-class Coll
 ('P001', 'SKU001-S', N'Áo khoác dù Paradox® JOLLY với thiết kế thời thượng bằng chất liệu dù 2 lớp mang đến sự thoải mái và thoáng khí khi mặc. Hình in kéo lụa chắc chắn và bền màu. Form áo oversize cá tính và che hết mọi khuyết điểm trên cơ thể.   S', 19.99, N'Áo khoác dù Paradox® SABLE - High-class Coll', 'S', 6, 100, 50, 3, 'https://product.hstatic.net/1000361985/product/xanh-1_d41c3322a267458aac8078fda348ca28_large.jpg'),
 ('P001', 'SKU001-M', N'Áo khoác dù Paradox® JOLLY với thiết kế thời thượng bằng chất liệu dù 2 lớp mang đến sự thoải mái và thoáng khí khi mặc. Hình in kéo lụa chắc chắn và bền màu. Form áo oversize cá tính và che hết mọi khuyết điểm trên cơ thể.   M', 19.99, N'Áo khoác dù Paradox® SABLE - High-class Coll', 'M', 6, 100, 50, 3, 'https://product.hstatic.net/1000361985/product/xanh-1_d41c3322a267458aac8078fda348ca28_large.jpg'),
 ('P001', 'SKU001-L', N'Áo khoác dù Paradox® JOLLY với thiết kế thời thượng bằng chất liệu dù 2 lớp mang đến sự thoải mái và thoáng khí khi mặc. Hình in kéo lụa chắc chắn và bền màu. Form áo oversize cá tính và che hết mọi khuyết điểm trên cơ thể.   L', 19.99, N'Áo khoác dù Paradox® SABLE - High-class Coll', 'L', 6, 100, 50, 3, 'https://product.hstatic.net/1000361985/product/xanh-1_d41c3322a267458aac8078fda348ca28_large.jpg'),
 
('P001', 'SKU001-S', N'Áo khoác dù Paradox® JOLLY với thiết kế thời thượng bằng chất liệu dù 2 lớp mang đến sự thoải mái và thoáng khí khi mặc. Hình in kéo lụa chắc chắn và bền màu. Form áo oversize cá tính và che hết mọi khuyết điểm trên cơ thể.   S', 19.99, N'Áo khoác dù Paradox® SABLE - High-class Coll', 'S', 7, 100, 50, 3, 'https://product.hstatic.net/1000361985/product/den-1_e57d3d88f32f447aa1a713f02a9a8ec7_large.jpg'),
('P001', 'SKU001-M', N'Áo khoác dù Paradox® JOLLY với thiết kế thời thượng bằng chất liệu dù 2 lớp mang đến sự thoải mái và thoáng khí khi mặc. Hình in kéo lụa chắc chắn và bền màu. Form áo oversize cá tính và che hết mọi khuyết điểm trên cơ thể.   M', 19.99, N'Áo khoác dù Paradox® SABLE - High-class Coll', 'M', 7, 100, 50, 3, 'https://product.hstatic.net/1000361985/product/den-1_e57d3d88f32f447aa1a713f02a9a8ec7_large.jpg'),
('P001', 'SKU001-L', N'Áo khoác dù Paradox® JOLLY với thiết kế thời thượng bằng chất liệu dù 2 lớp mang đến sự thoải mái và thoáng khí khi mặc. Hình in kéo lụa chắc chắn và bền màu. Form áo oversize cá tính và che hết mọi khuyết điểm trên cơ thể.   L', 19.99, N'Áo khoác dù Paradox® SABLE - High-class Coll', 'L', 7, 100, 50, 3, 'https://product.hstatic.net/1000361985/product/den-1_e57d3d88f32f447aa1a713f02a9a8ec7_large.jpg'),

('P001', 'SKU001-S', N'Áo khoác dù Paradox® JOLLY với thiết kế thời thượng bằng chất liệu dù 2 lớp mang đến sự thoải mái và thoáng khí khi mặc. Hình in kéo lụa chắc chắn và bền màu. Form áo oversize cá tính và che hết mọi khuyết điểm trên cơ thể.   S', 19.99, N'Áo khoác dù Paradox® SABLE - High-class Coll', 'S', 5, 100, 50, 3, 'https://product.hstatic.net/1000361985/product/khung-02-f6df3cbf-2fba-4ca6-9d33-32271419eaa9-1683171829390_74860dd03643497693941e041b7c82ce_large.jpg'),
('P001', 'SKU001-M', N'Áo khoác dù Paradox® JOLLY với thiết kế thời thượng bằng chất liệu dù 2 lớp mang đến sự thoải mái và thoáng khí khi mặc. Hình in kéo lụa chắc chắn và bền màu. Form áo oversize cá tính và che hết mọi khuyết điểm trên cơ thể.   M', 19.99, N'Áo khoác dù Paradox® SABLE - High-class Coll', 'M', 5, 100, 50, 3, 'https://product.hstatic.net/1000361985/product/khung-02-f6df3cbf-2fba-4ca6-9d33-32271419eaa9-1683171829390_74860dd03643497693941e041b7c82ce_large.jpg'),
('P001', 'SKU001-L', N'Áo khoác dù Paradox® JOLLY với thiết kế thời thượng bằng chất liệu dù 2 lớp mang đến sự thoải mái và thoáng khí khi mặc. Hình in kéo lụa chắc chắn và bền màu. Form áo oversize cá tính và che hết mọi khuyết điểm trên cơ thể.   L', 19.99, N'Áo khoác dù Paradox® SABLE - High-class Coll', 'L', 5, 100, 50, 3, 'https://product.hstatic.net/1000361985/product/khung-02-f6df3cbf-2fba-4ca6-9d33-32271419eaa9-1683171829390_74860dd03643497693941e041b7c82ce_large.jpg'),
---- Áo thun Paradox® HANOI SPOTS
('P002', 'SKU002-S', N'Áo thun Paradox® HANOI SPOTS với thiết kế thời thượng: hình ảnh Hà Nội, những địa điểm nên thơ của đất thủ đô, bằng chất liệu cotton 2 chiều mang đến sự thoải mái và quen thuộc khi mặc. Hình in kéo lụa chắc chắn và bền màu.  S', 29.99, N'Áo thun Paradox® HANOI SPOTS', 'S', 6, 100, 50, 4, 'https://product.hstatic.net/1000361985/product/trang-1_d8df66dbfbcc449b98be56aa5cb162e5_large.jpg'),
('P002', 'SKU002-M', N'Áo thun Paradox® HANOI SPOTS với thiết kế thời thượng: hình ảnh Hà Nội, những địa điểm nên thơ của đất thủ đô, bằng chất liệu cotton 2 chiều mang đến sự thoải mái và quen thuộc khi mặc. Hình in kéo lụa chắc chắn và bền màu.  M', 29.99, N'Áo thun Paradox® HANOI SPOTS', 'M', 6, 100, 50, 4, 'https://product.hstatic.net/1000361985/product/trang-1_d8df66dbfbcc449b98be56aa5cb162e5_large.jpg'),
('P002', 'SKU002-L', N'Áo thun Paradox® HANOI SPOTS với thiết kế thời thượng: hình ảnh Hà Nội, những địa điểm nên thơ của đất thủ đô, bằng chất liệu cotton 2 chiều mang đến sự thoải mái và quen thuộc khi mặc. Hình in kéo lụa chắc chắn và bền màu.  L', 29.99, N'Áo thun Paradox® HANOI SPOTS', 'L', 6, 100, 50, 4, 'https://product.hstatic.net/1000361985/product/trang-1_d8df66dbfbcc449b98be56aa5cb162e5_large.jpg'),

('P002', 'SKU002-S', N'Áo thun Paradox® HANOI SPOTS với thiết kế thời thượng: hình ảnh Hà Nội, những địa điểm nên thơ của đất thủ đô, bằng chất liệu cotton 2 chiều mang đến sự thoải mái và quen thuộc khi mặc. Hình in kéo lụa chắc chắn và bền màu.  S', 29.99, N'Áo thun Paradox® HANOI SPOTS', 'S', 7, 100, 50, 4, 'https://product.hstatic.net/1000361985/product/den-1_0c6f8576e30c4e65b863d75b8b5476e4_large.jpg'),
('P002', 'SKU002-M', N'Áo thun Paradox® HANOI SPOTS với thiết kế thời thượng: hình ảnh Hà Nội, những địa điểm nên thơ của đất thủ đô, bằng chất liệu cotton 2 chiều mang đến sự thoải mái và quen thuộc khi mặc. Hình in kéo lụa chắc chắn và bền màu.  M', 29.99, N'Áo thun Paradox® HANOI SPOTS', 'M', 7, 100, 50, 4, 'https://product.hstatic.net/1000361985/product/den-1_0c6f8576e30c4e65b863d75b8b5476e4_large.jpg'),
('P002', 'SKU002-L', N'Áo thun Paradox® HANOI SPOTS với thiết kế thời thượng: hình ảnh Hà Nội, những địa điểm nên thơ của đất thủ đô, bằng chất liệu cotton 2 chiều mang đến sự thoải mái và quen thuộc khi mặc. Hình in kéo lụa chắc chắn và bền màu.  L', 29.99, N'Áo thun Paradox® HANOI SPOTS', 'L', 7, 100, 50, 4, 'https://product.hstatic.net/1000361985/product/den-1_0c6f8576e30c4e65b863d75b8b5476e4_large.jpg'),

('P002', 'SKU002-S', N'Áo thun Paradox® HANOI SPOTS với thiết kế thời thượng: hình ảnh Hà Nội, những địa điểm nên thơ của đất thủ đô, bằng chất liệu cotton 2 chiều mang đến sự thoải mái và quen thuộc khi mặc. Hình in kéo lụa chắc chắn và bền màu.  S', 29.99, N'Áo thun Paradox® HANOI SPOTS', 'S', 4, 100, 50, 4, 'https://product.hstatic.net/1000361985/product/kem-1_cc0eb710ff4c47138d56fd9143977bdf_large.jpg'),
('P002', 'SKU002-M', N'Áo thun Paradox® HANOI SPOTS với thiết kế thời thượng: hình ảnh Hà Nội, những địa điểm nên thơ của đất thủ đô, bằng chất liệu cotton 2 chiều mang đến sự thoải mái và quen thuộc khi mặc. Hình in kéo lụa chắc chắn và bền màu.  M', 29.99, N'Áo thun Paradox® HANOI SPOTS', 'M', 4, 100, 50, 4, 'https://product.hstatic.net/1000361985/product/kem-1_cc0eb710ff4c47138d56fd9143977bdf_large.jpg'),
('P002', 'SKU002-L', N'Áo thun Paradox® HANOI SPOTS với thiết kế thời thượng: hình ảnh Hà Nội, những địa điểm nên thơ của đất thủ đô, bằng chất liệu cotton 2 chiều mang đến sự thoải mái và quen thuộc khi mặc. Hình in kéo lụa chắc chắn và bền màu.  L', 29.99, N'Áo thun Paradox® HANOI SPOTS', 'L', 4, 100, 50, 4, 'https://product.hstatic.net/1000361985/product/kem-1_cc0eb710ff4c47138d56fd9143977bdf_large.jpg'),

-- Áo thun Paradox® AUTHOR
('P003', 'SKU003-S', N'Form áo oversize cá tính và che hết mọi khuyết điểm trên cơ thể. Sản phẩm phù hợp với mọi hoạt động thường ngày. Cổ áo tròn ôm sát, dày dặn 3 cm và có chu vi vừa phải, tôn dáng và thoải mái khi mặc. S', 39.99, N'Áo thun Paradox® AUTHOR', 'S', 4, 100, 50, 3, 'https://product.hstatic.net/1000361985/product/kem-_a16123967a04444885c7ff1eade1e0a5_large.jpg'),
('P003', 'SKU003-M', N'Form áo oversize cá tính và che hết mọi khuyết điểm trên cơ thể. Sản phẩm phù hợp với mọi hoạt động thường ngày. Cổ áo tròn ôm sát, dày dặn 3 cm và có chu vi vừa phải, tôn dáng và thoải mái khi mặc. M', 39.99, N'Áo thun Paradox® AUTHOR', 'M', 4, 100, 50, 3, 'https://product.hstatic.net/1000361985/product/kem-_a16123967a04444885c7ff1eade1e0a5_large.jpg'),
('P003', 'SKU003-L', N'Form áo oversize cá tính và che hết mọi khuyết điểm trên cơ thể. Sản phẩm phù hợp với mọi hoạt động thường ngày. Cổ áo tròn ôm sát, dày dặn 3 cm và có chu vi vừa phải, tôn dáng và thoải mái khi mặc. L', 39.99, N'Áo thun Paradox® AUTHOR', 'L', 4, 100, 50, 3, 'https://product.hstatic.net/1000361985/product/kem-_a16123967a04444885c7ff1eade1e0a5_large.jpg'),

('P003', 'SKU003-S', N'Form áo oversize cá tính và che hết mọi khuyết điểm trên cơ thể. Sản phẩm phù hợp với mọi hoạt động thường ngày. Cổ áo tròn ôm sát, dày dặn 3 cm và có chu vi vừa phải, tôn dáng và thoải mái khi mặc. S', 39.99, N'Áo thun Paradox® AUTHOR', 'S', 6, 100, 50, 3, 'https://product.hstatic.net/1000361985/product/trang-1_eb080621bcbe40849d3f9429a672aaa5_large.jpg'),
('P003', 'SKU003-M', N'Form áo oversize cá tính và che hết mọi khuyết điểm trên cơ thể. Sản phẩm phù hợp với mọi hoạt động thường ngày. Cổ áo tròn ôm sát, dày dặn 3 cm và có chu vi vừa phải, tôn dáng và thoải mái khi mặc. M', 39.99, N'Áo thun Paradox® AUTHOR', 'M', 6, 100, 50, 3, 'https://product.hstatic.net/1000361985/product/trang-1_eb080621bcbe40849d3f9429a672aaa5_large.jpg'),
('P003', 'SKU003-L', N'Form áo oversize cá tính và che hết mọi khuyết điểm trên cơ thể. Sản phẩm phù hợp với mọi hoạt động thường ngày. Cổ áo tròn ôm sát, dày dặn 3 cm và có chu vi vừa phải, tôn dáng và thoải mái khi mặc. L', 39.99, N'Áo thun Paradox® AUTHOR', 'L', 6, 100, 50, 3, 'https://product.hstatic.net/1000361985/product/trang-1_eb080621bcbe40849d3f9429a672aaa5_large.jpg'),

('P003', 'SKU003-S', N'Form áo oversize cá tính và che hết mọi khuyết điểm trên cơ thể. Sản phẩm phù hợp với mọi hoạt động thường ngày. Cổ áo tròn ôm sát, dày dặn 3 cm và có chu vi vừa phải, tôn dáng và thoải mái khi mặc. S', 39.99, N'Áo thun Paradox® AUTHOR', 'S', 7, 100, 50, 3, 'https://product.hstatic.net/1000361985/product/den-1_711bada7aaf1467dac8913a5b324215d_large.jpg'),
('P003', 'SKU003-M', N'Form áo oversize cá tính và che hết mọi khuyết điểm trên cơ thể. Sản phẩm phù hợp với mọi hoạt động thường ngày. Cổ áo tròn ôm sát, dày dặn 3 cm và có chu vi vừa phải, tôn dáng và thoải mái khi mặc. M', 39.99, N'Áo thun Paradox® AUTHOR', 'M', 7, 100, 50, 3, 'https://product.hstatic.net/1000361985/product/den-1_711bada7aaf1467dac8913a5b324215d_large.jpg'),
('P003', 'SKU003-L', N'Form áo oversize cá tính và che hết mọi khuyết điểm trên cơ thể. Sản phẩm phù hợp với mọi hoạt động thường ngày. Cổ áo tròn ôm sát, dày dặn 3 cm và có chu vi vừa phải, tôn dáng và thoải mái khi mặc. L', 39.99, N'Áo thun Paradox® AUTHOR', 'L', 7, 100, 50, 3, 'https://product.hstatic.net/1000361985/product/den-1_711bada7aaf1467dac8913a5b324215d_large.jpg'),

 --Áo sơ mi
('P004', 'SKU004-XL',N'Form áo oversize cá tính và che hết mọi khuyết điểm trên cơ thể. Sản phẩm phù hợp với mọi hoạt động thường ngày. Cổ áo tròn ôm sát, dày dặn 3 cm và có chu vi vừa phải, tôn dáng và thoải mái khi mặc. XL', 49.99, N'Áo sơ mi Paradox® GLOBE', 'XL', 7, 100, 50, 5, 'https://product.hstatic.net/1000361985/product/den-_ae88ef211a694a1c9cbc66c18f391998_large.jpg'),
('P004', 'SKU004-L', N'Form áo oversize cá tính và che hết mọi khuyết điểm trên cơ thể. Sản phẩm phù hợp với mọi hoạt động thường ngày. Cổ áo tròn ôm sát, dày dặn 3 cm và có chu vi vừa phải, tôn dáng và thoải mái khi mặc. L', 49.99, N'Áo sơ mi Paradox® GLOBE', 'L', 7, 100, 50, 5, 'https://product.hstatic.net/1000361985/product/den-_ae88ef211a694a1c9cbc66c18f391998_large.jpg'),
('P004', 'SKU004-S', N'Form áo oversize cá tính và che hết mọi khuyết điểm trên cơ thể. Sản phẩm phù hợp với mọi hoạt động thường ngày. Cổ áo tròn ôm sát, dày dặn 3 cm và có chu vi vừa phải, tôn dáng và thoải mái khi mặc. S', 49.99, N'Áo sơ mi Paradox® GLOBE', 'S', 7, 100, 50, 5, 'https://product.hstatic.net/1000361985/product/den-_ae88ef211a694a1c9cbc66c18f391998_large.jpg');
-- Fake data for the Payment table
INSERT INTO [dbo].[Payment] ([payment_method], [ngayTao]) VALUES 
('Credit Card', '2023-01-01T10:00:00'),
('Paypal', '2023-02-15T11:30:00'),
('Bank Transfer', '2023-03-20T14:45:00'),
('Cash', '2023-04-05T09:15:00'),
('Mobile Payment', '2023-05-10T16:50:00');
INSERT INTO [dbo].[account] 
    ([first_name], [last_name], [email], [password], [address], [role], [phone_number], [ngayTao])
VALUES 
    ('Admin', 'User', 'trang@gamil.com', 'trang', 'Admin Address', 1, '1234567890', GETDATE());
