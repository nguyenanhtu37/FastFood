create database Project
Go

use Project
go

set ansi_nulls on
go
set quoted_identifier on
go

create table Account(
	userId int identity(1,1) not null,
	username varchar(255) null,
	[password] varchar(255) null,
	isSell int null,
	isAdmin int null,
	primary key clustered(
		userId asc
	)
	with(
		pad_index = off, statistics_norecompute = off, ignore_dup_key = off, allow_row_locks = on, allow_page_locks = on)
		on [primary]
	) 
	on [primary]
go

set ansi_nulls on
go
set quoted_identifier on

create table Cart(
	AccountID int null,
	ProductID int null,
	Amount int null
) 
on [primary]
go

set ansi_nulls on
go
set quoted_identifier on
go

create table Category(
	cateId int not null,
	categoryName nvarchar(50) not null,
	constraint PK_Category primary key clustered(
		cateId asc
	)
	with(
		pad_index = off, statistics_norecompute = off, ignore_dup_key = off, allow_row_locks = on, allow_page_locks = on
	) on [primary]
) on [primary]
go

set ansi_nulls on
go
set quoted_identifier on
go

create table Product(
	productId int identity(1,1) not null,
	productName nvarchar(max) null,
	productImage nvarchar(max) null,
	productPrice money null,
	title nvarchar(max) null,
	productDescription nvarchar(max) null,
	cateID int null,
	sell_ID int null
) on [primary] textimage_on  [primary]
go

set identity_insert Account on
insert Account (userId, username, password, isSell, isAdmin) VALUES (1, N'user123', N'123456', 1, 0)
insert Account (userId, username, password, isSell, isAdmin) VALUES (2, N'cool_girl', N'SNZ6HE', 0, 1)
insert Account (userId, username, password, isSell, isAdmin) VALUES (3, N'techmaster', N'RXH3XJ', 0, 1)
insert Account (userId, username, password, isSell, isAdmin) VALUES (4, N'happy_day', N'HWV8ZN', 0, 0)
insert Account (userId, username, password, isSell, isAdmin) VALUES (5, N'gaming_ninja', N'NPX7OF', 1, 0)
insert Account (userId, username, password, isSell, isAdmin) VALUES (6, N'super_star', N'WIZ5VZ', 1, 0)
insert Account (userId, username, password, isSell, isAdmin) VALUES (7, N'code_wizard', N'ZSW2LU', 1, 0)
insert Account (userId, username, password, isSell, isAdmin) VALUES (8, N'music_lover', N'RVV5SR', 0, 0)
insert Account (userId, username, password, isSell, isAdmin) VALUES (9, N'bookworm123', N'VAI6XR', 1, 1)
insert Account (userId, username, password, isSell, isAdmin) VALUES (10, N'sky_high', N'DNX6JK', 1, 0)
insert Account (userId, username, password, isSell, isAdmin) VALUES (11, N'fashionista', N'XWU7JP', 0, 1)
insert Account (userId, username, password, isSell, isAdmin) VALUES (12, N'sports_fan', N'TSR5MR', 0, 1)
insert Account (userId, username, password, isSell, isAdmin) VALUES (13, N'coffee_addict', N'EHS8CM', 0, 0)
insert Account (userId, username, password, isSell, isAdmin) VALUES (14, N'nature_adventurer', N'YOY7ZW', 1, 0)
insert Account (userId, username, password, isSell, isAdmin) VALUES (15, N'travel_bug', N'IGE8TN', 1, 0)
insert Account (userId, username, password, isSell, isAdmin) VALUES (16, N'movie_buff', N'OFO6QS', 0, 0)
insert Account (userId, username, password, isSell, isAdmin) VALUES (17, N'art_expert', N'IBM6RZ', 1, 0)
insert Account (userId, username, password, isSell, isAdmin) VALUES (18, N'fitness_guru', N'ZYS9VI', 1, 0)
insert Account (userId, username, password, isSell, isAdmin) VALUES (19, N'foodie_love', N'WZA0IH', 1, 0)
insert Account (userId, username, password, isSell, isAdmin) VALUES (20, N'social_butterfly', N'QMW4EN', 0, 1)
insert Account (userId, username, password, isSell, isAdmin) VALUES (21, N'dream_chaser', N'CZB2VM', 0, 1)
insert Account (userId, username, password, isSell, isAdmin) VALUES (22, N'science_geek', N'ZKE7QZ', 1, 1)
insert Account (userId, username, password, isSell, isAdmin) VALUES (23, N'adventure_seeker', N'SFS0IW', 1, 1)
insert Account (userId, username, password, isSell, isAdmin) VALUES (24, N'music_maker', N'PSQ7LC', 0, 1)
insert Account (userId, username, password, isSell, isAdmin) VALUES (25, N'tech_nerd', N'KIS9AF', 1, 1)
insert Account (userId, username, password, isSell, isAdmin) VALUES (26, N'smiley_face', N'IKV0IX', 0, 0)
insert Account (userId, username, password, isSell, isAdmin) VALUES (27, N'fashion_icon', N'123', 1, 1)
insert Account (userId, username, password, isSell, isAdmin) VALUES (28, N'sports_hero', N'mra', 0, 0)
insert Account (userId, username, password, isSell, isAdmin) VALUES (29, N'code_genius', N'123', 0, 0)
insert Account (userId, username, password, isSell, isAdmin) VALUES (30, N'happy_soul', N'123', 0, 0)
set identity_insert Account off

insert Category (cateId, categoryName) values (1, N'Coffee')
insert Category (cateId, categoryName) values (2, N'Gà')
insert Category (cateId, categoryName) values (3, N'Xúc xích')
insert Category (cateId, categoryName) values (4, N'Các loại khác')

set identity_insert product on

insert into product (productId, productName, productImage, productPrice, title, productDescription, cateID, sell_ID) values (1, 'Black coffee', N'https://somedayilllearn.com/wp-content/uploads/2020/05/cup-of-black-coffee-scaled-720x540.jpeg', 25000, N'Cà phê đen', N'Cà phê pha bằng cách lấy hạt cà phê rang và xay tươi, thường không thêm đường hoặc sữa.', 1, 0)
insert into product (productId, productName, productImage, productPrice, title, productDescription, cateID, sell_ID) values (2, 'Milk coffee', N'https://vietblend.vn/wp-content/uploads/2018/12/cach-lam-cafe-sua-nong.jpg', 25000, N'Cà phê sữa', N'Cà phê đen pha chế với sữa tươi, thường là cùng lượng cà phê và sữa.', 1, 0)
insert into product (productId, productName, productImage, productPrice, title, productDescription, cateID, sell_ID) values (3, 'Latte coffee', N'https://thienhatcoffee.com/wp-content/uploads/2022/03/ca-phe-latte-la-gi.jpg', 45000, N'Cà phê latte', N'Cà phê đen pha chế với sữa ấm và lớp bọt khí ở trên cùng, thường hương vani hoặc caramel.', 1, 0)
insert into product (productId, productName, productImage, productPrice, title, productDescription, cateID, sell_ID) values (4, 'Espresso', N'https://file.hstatic.net/1000075078/article/blog_f80b599183c340bca744c174e7ab2af8.jpg', 30000, N'Cà phê', N'Cà phê đen đậm đặc, pha bằng cách đổ nước nóng qua hạt cà phê nghiền nhỏ.', 1, 0)
insert into product (productId, productName, productImage, productPrice, title, productDescription, cateID, sell_ID) values (5, 'Cappuccino', N'https://upload.wikimedia.org/wikipedia/commons/c/c8/Cappuccino_at_Sightglass_Coffee.jpg', 55000, N'Cà phê', N'Cà phê đen pha chế với sữa hấp và lớp bọt sữa đặc, thường có lớp cà phê phủ ở trên cùng.', 1, 0)
insert into product (productId, productName, productImage, productPrice, title, productDescription, cateID, sell_ID) values (6, 'Americano', N'https://cdn.tgdd.vn/2021/11/CookDish/americano-la-gi-nguon-goc-cach-pha-americano-don-gian-va-avt-1200x676.jpg', 30000, N'Cà phê', N'Espresso pha loãng với nước nóng, tạo ra cà phê vị nhẹ hơn.', 1, 0)
insert into product (productId, productName, productImage, productPrice, title, productDescription, cateID, sell_ID) values (7, 'Mocha', N'https://dayphache.edu.vn/wp-content/uploads/2016/05/ca-phe-mocha-nong.jpg', 25000, N'Cà phê', N'Espresso pha chế với sữa nóng và sô cô la, thường có lớp kem tươi ở trên cùng.', 1, 0)
insert into product (productId, productName, productImage, productPrice, title, productDescription, cateID, sell_ID) values (8, 'Coffee with cream', N'https://www.everyday-delicious.com/wp-content/uploads/2022/02/bourbon-coffee-everyday-delicious-2.jpg', 50000, N'Cà phê kem', N'Cà phê đen pha chế với kem tươi hoặc kem sữa, tạo ra hương vị mềm mịn.', 1, 0)
insert into product (productId, productName, productImage, productPrice, title, productDescription, cateID, sell_ID) values (9, 'Iced coffee', N'https://www.whiskaffair.com/wp-content/uploads/2020/12/Iced-Vanilla-Latte-2-3-500x500.jpg', 30000, N'Cà phê đá', N'Cà phê đen hoặc espresso pha với đá và đường, thường được phục vụ trong ly đá.', 1, 0)
insert into product (productId, productName, productImage, productPrice, title, productDescription, cateID, sell_ID) values (10, 'Frappuccino', N'https://cdn.tgdd.vn/2021/12/CookDishThumb/frappuccino-la-gi-nguon-goc-cua-frappuccino-va-cach-lam-thumb-620x620.jpg', 65000, N'Cà phê', N'Một loại cà phê đá xay nhuyễn kết hợp với sữa, đường và hương vị khác nhau, thường được trang trí bằng kem tươi hoặc sô cô la.', 1, 0)
insert into product (productId, productName, productImage, productPrice, title, productDescription, cateID, sell_ID) values (11, 'Fried Chicken', N'https://insanelygoodrecipes.com/wp-content/uploads/2020/04/Fried_Chicken-1024x536.png', 75000, N'Gà rán', N'Gà được chiên giòn bên ngoài và mềm mại bên trong. Thường được phục vụ cùng với sốt và khoai tây chiên.', 2, 0)
insert into product (productId, productName, productImage, productPrice, title, productDescription, cateID, sell_ID) values (12, 'Grilled Chicken', N'https://hips.hearstapps.com/hmg-prod/images/grilled-chicken-vertical-1532030764.jpg?crop=0.993xw:0.663xh;0.00340xw,0.144xh&resize=980:*', 100000, N'Gà nướng', N'Gà được nướng trên than hoặc lò, tạo ra món ăn đơn giản và ngon miệng.', 2, 0)
insert into product (productId, productName, productImage, productPrice, title, productDescription, cateID, sell_ID) values (13, 'BBQ Chicken', N'https://i2.wp.com/www.downshiftology.com/wp-content/uploads/2022/06/BBQ-Chicken-main-1.jpg', 105000, N'Gà nướng BBQ', N'Gà được nướng với sốt BBQ, tạo ra món ăn có hương vị đặc trưng của sốt nướng.', 2, 0)
insert into product (productId, productName, productImage, productPrice, title, productDescription, cateID, sell_ID) values (14, 'Sticky Rice with Chicken', N'https://www.marionskitchen.com/wp-content/uploads/2022/06/Vietnamese-style-Sticky-Rice-with-Chicken-Chinese-Sausage-02.jpg', 57000, N'Gà bó xôi', N'Gà được chế biến với xôi nấu chín, tạo ra món ăn ngon miệng và bổ dưỡng.', 2, 0)
insert into product (productId, productName, productImage, productPrice, title, productDescription, cateID, sell_ID) values (15, 'Spicy Chicken', N'https://www.cookwithnabeela.com/wp-content/uploads/2022/08/SpicyChickenWings_Web_1.png', 60000, N'Gà cay', N'Gà được chế biến với gia vị cay, tạo ra món ăn có hương vị đặc biệt và hấp dẫn.', 2, 0)
insert into product (productId, productName, productImage, productPrice, title, productDescription, cateID, sell_ID) values (16, 'Korean Fried Chicken', N'https://hips.hearstapps.com/hmg-prod/images/190130-korean-fried-chicken-horizontal-041-1549304734.jpg?crop=0.888888888888889xw:1xh;center,top', 199000, N'Gà Hàn Quốc', N'Gà rán kiểu Hàn Quốc, thường có lớp vỏ giòn và sốt đặc trưng.', 2, 0)
insert into product (productId, productName, productImage, productPrice, title, productDescription, cateID, sell_ID) values (17, 'Teriyaki Chicken', N'https://www.saltandlavender.com/wp-content/uploads/2018/11/teriyaki-chicken-recipe-1.jpg', 40000, N'Gà Teriyaki', N'Gà nướng hoặc xào với sốt teriyaki (sốt đậm đà, ngọt ngào).', 2, 0)
insert into product (productId, productName, productImage, productPrice, title, productDescription, cateID, sell_ID) values (18, 'Ginger Chicken', N'https://simply-delicious-food.com/wp-content/uploads/2019/08/Sticky-ginger-chicken-3.jpg', 89000, N'Gà kho gừng', N'Gà được nấu trong sốt gừng, tạo ra món ăn thơm ngon và hấp dẫn.', 2, 0)
insert into product (productId, productName, productImage, productPrice, title, productDescription, cateID, sell_ID) values (19, 'Chicken Stir-Fry', N'https://static.onecms.io/wp-content/uploads/sites/43/2022/09/13/240708-broccoli-and-chicken-stir-fry-3x4-186-copy.jpg', 77000, N'Gà xào lăn', N'Gà xào nhanh với rau củ tươi ngon.', 2, 0)
insert into product (productId, productName, productImage, productPrice, title, productDescription, cateID, sell_ID) values (20, 'Chicken Congee', N'https://www.cooking-therapy.com/wp-content/uploads/2020/10/Chicken-Congee-5.jpg', 35000, N'Gà nấu cháo', N'Gà nấu chín trong cháo, tạo ra món ăn dễ tiêu hóa và phù hợp với mọi đối tượng.', 2, 0)
insert into product (productId, productName, productImage, productPrice, title, productDescription, cateID, sell_ID) values (21, 'Cheese Sausage', N'https://cdn.greatlifepublishing.net/wp-content/uploads/sites/2/2021/09/22100528/Stuffed-Italian-Sausage-OG1.jpg', 20000, 'Xúc xích phô mai', 'Xúc xích kết hợp với phô mai, tạo ra món ăn thơm ngon và béo ngậy.', 3, 0)
insert into product (productId, productName, productImage, productPrice, title, productDescription, cateID, sell_ID) values (22, 'Steamed Sausage', N'https://www.shutterstock.com/image-photo/steamed-sausage-on-electric-pan-260nw-1325910179.jpg', 40000, N'Xúc xích hấp', N'Xúc xích hấp với các gia vị, tạo ra món ăn mềm mịn và đậm đà hương vị.', 3, 0)
insert into product (productId, productName, productImage, productPrice, title, productDescription, cateID, sell_ID) values (23, N'Grilled Sausage', N'https://assets.epicurious.com/photos/5748afc15a5fbbae31ae4af4/master/w_1000,h_667,c_limit/shutterstock_409001401.jpg', 30000, N'Xúc xích nướng', N'Xúc xích được nướng trên than hoặc lò, tạo ra món ăn giòn rụm và thơm ngon.', 3, 0)
insert into product (productId, productName, productImage, productPrice, title, productDescription, cateID, sell_ID) values (24, N'Sausage in a Bun', N'https://assets.kraftfoods.com/recipe_images/opendeploy/97992_640x428.jpg', 25000, N'Xúc xích bọc bánh mì', N'Xúc xích được đặt trong bánh mì, thường kèm các loại sốt và rau sống.', 3, 0)
insert into product (productId, productName, productImage, productPrice, title, productDescription, cateID, sell_ID) values (25, N'Honey-Glazed Sausage', N'https://www.donaldrussell.com/media/catalog/product/g/l/glazesausage.jpg?optimize=medium&bg-color=255,255,255&fit=bounds&height=560&width=560&canvas=560:560', 25000, N'Xúc xích nướng mật ong', N'Xúc xích nướng với lớp mật ong đặc trưng, tạo ra hương vị ngọt ngào và thơm lừng.', 3, 0)
insert into product (productId, productName, productImage, productPrice, title, productDescription, cateID, sell_ID) values (26, N'Fried Sausage', N'https://st2.depositphotos.com/1231353/6519/i/950/depositphotos_65193851-stock-photo-fried-sausage-a-grill-on.jpg', 30000, N'Xúc xích chiên', N'Xúc xích được chiên giòn, tạo ra lớp vỏ giòn và bên trong mềm mại.', 3, 0)
insert into product (productId, productName, productImage, productPrice, title, productDescription, cateID, sell_ID) values (27, 'Ready-to-Eat Sausage', N'https://images.fineartamerica.com/images/artworkimages/mediumlarge/2/3-ready-to-eat-sausages-wdnet-studio.jpg', 20000, N'Xúc xích ăn liền', N'Xúc xích đã được chế biến và đóng gói sẵn, có thể ăn liền mà không cần nấu chín.', 3, 0)
insert into product (productId, productName, productImage, productPrice, title, productDescription, cateID, sell_ID) values (28, N'Chorizo Sausage', N'https://food.fnr.sndimg.com/content/dam/images/food/fullset/2021/08/17/GettyImages-1002482318.jpg.rend.hgtvcom.406.271.suffix/1629239276955.jpeg', 40000, N'Xúc xích lạp xưởng', N'Loại xúc xích có nguồn gốc từ Tây Ban Nha, thường có hương vị cay nồng và đậm đà.', 3, 0)
insert into product (productId, productName, productImage, productPrice, title, productDescription, cateID, sell_ID) values (29, 'Beef Sausage', N'https://pandaniselect.com.au/wp-content/uploads/2014/06/product_freshbeefsausages.jpg', 25000, N'Xúc xích bò', N' Xúc xích được làm từ thịt bò, có hương vị đặc trưng của thịt bò.', 3, 0)
insert into product (productId, productName, productImage, productPrice, title, productDescription, cateID, sell_ID) values (30, 'Chicken Sausage', N'https://www.seriouseats.com/thmb/HntFnSNz3YCNDaFxA24nWBl84hg=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/__opt__aboutcom__coeus__resources__content_migration__serious_eats__seriouseats.com__recipes__images__2012__10__20121005-225215-garlic-feta-chicken-sausage-30afb4c41cd24c36a286c9126a3ead81.jpg', 30000, N'Xúc xích gà', N'Xúc xích được làm từ thịt gà, thường ít béo và nhẹ nhàng vị.', 3, 0)
insert into product (productId, productName, productImage, productPrice, title, productDescription, cateID, sell_ID) values (31, 'Burger', N'https://www.allrecipes.com/thmb/5JVfA7MxfTUPfRerQMdF-nGKsLY=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/25473-the-perfect-basic-burger-DDMFS-4x3-56eaba3833fd4a26a82755bcd0be0c54.jpg', 30000, N'Bánh mì kẹp thịt', N'Bánh mì kẹp thịt (thường là thịt bò) cùng với rau sống, sốt, phô mai và các nguyên liệu khác.', 4, 0)
insert into product (productId, productName, productImage, productPrice, title, productDescription, cateID, sell_ID) values (32, 'Pizza', N'https://i-giadinh.vnecdn.net/2021/07/30/nh3-1627637589-4738-1627637726.jpg', 250000, N'Bánh pizza', N' Bánh pizza có nền bánh mỏng hoặc béo, phủ sốt cà chua, phô mai và các loại nhân khác nhau.', 4, 0)
insert into product (productId, productName, productImage, productPrice, title, productDescription, cateID, sell_ID) values (33, 'Pasta', N'https://www.jocooks.com/wp-content/uploads/2018/12/creamy-tomato-chicken-pasta-1-20.jpg', 150000, N'Mì Ý', N'Mì Ý với nhiều loại sốt và nhân khác nhau như carbonara, bolognese, và pesto.', 4, 0)
insert into product (productId, productName, productImage, productPrice, title, productDescription, cateID, sell_ID) values (34, 'Sandwich', N'https://cdn.nhathuoclongchau.com.vn/unsafe/https://cms-prod.s3-sgn09.fptcloud.com/mach_ban_6_cach_lam_banh_mi_sandwich_day_du_dinh_duong_lj_Tcr_1679144485_c1108446f4.png', 25000, N'Bánh mỳ sandwich', N'Bánh mỳ kẹp thịt, rau sống, phô mai và các loại gia vị và sốt khác.', 4, 0)
insert into product (productId, productName, productImage, productPrice, title, productDescription, cateID, sell_ID) values (35, 'Bento', N'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1d/Bento_box_from_a_grocery_store.jpg/1200px-Bento_box_from_a_grocery_store.jpg', 45000, N'Cơm hộp', N'Một hộp đựng cơm truyền thống Nhật Bản kèm các món ăn như thịt, cá, trứng, rau sống...', 4, 0)
Insert into Product(productName, productImage, productPrice, title, productDescription, cateId) values
(N'Noodle', 'images/mitom.jpg', '30000', N'Mì ăn liền', N'Mì tôm tươi 100%', '4'),
(N'Bread', 'images/banhmi.jpg', '22000', N'Bánh mì ăn liền', N'Bánh mì xúc xích kẹp thịt', '4'),
(N'Kimbap', 'images/kimbap.jpg', '50000', N'Kimbap ăn liền', N'Kimbap gà chiên giòn', '4'),
(N'Hamburger', 'images/hamburger.png', '30000', N'Hamburger ăn liền', N'Hamburger thịt nướng', '4'),
(N'Snack', 'images/snack.jpg', '25000', N'Snack ăn liền', N'Snack đủ loại', '4'),
(N'RolledRicePaper', 'images/banhtrangcuon.jpg', '40000', N'Bánh tráng cuốn ăn liền', N'Bánh tráng cuốn nhân thập cẩm', '4'),
(N'Khoai tây chiên', 'images/khoaitaychien.jpg', '20000', N'Khoai tây chiên ăn liền', N'Khoai tây chiên giòn, tẩm gia vị', '4'),
(N'Bánh bao', 'images/banhbao.jpg', '15000', N'Bánh bao ăn liền', N'Bánh bao trứng cút, thịt bằm', '4'),
(N'Bánh bột lọc', 'images/banhbotloc.jpg', '40000', N'Bánh bột lọc ăn liền', N'Bột lọc trần nhân đậu xanh', '4'),
(N'Bánh cuốn', 'images/banhcuon.jpg', '30000', N'Bánh cuốn ăn liền', N'Bánh cuốn nhân tôm', '4'),
(N'Nước ép sinh tố', 'images/sinhto.jpg', '20000', N'Nước giải khát', N'Nước ép sinh tố đủ loại', '4'),
(N'Nước trà', 'images/tra.jpg', '20000', N'Nước uống làm ấm cơ thể', N'Nước trà tinh chất', '4'),
(N'MNước ngọt', 'images/nuocngot.jpg', '15000', N'Nước uống giải khát', N'Nước ngọt đủ loại', '4'),
(N'Nước lọc', 'images/nuocloc.jpg', '10000', N'Nước giải khát', N'Nước lọc khoáng chất', '4'),
(N'Sữa', 'images/sua.jpg', '15000', N'Đồ uống giải khát', N'Sữa bò nguyên chất', '4'),
(N'Cocktail', 'images/cocktail.jpg', '40000', N'Nước uống giải khát', N'Cocktail pha chế đủ loại', '4'),
(N'Bia', 'images/bia.jpg', '20000', N'Thức uống có cồn', N'Bia ướp lạnh đủ loại', '4');
set identity_insert product off