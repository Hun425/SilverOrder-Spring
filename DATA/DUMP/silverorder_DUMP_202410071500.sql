-- CREATE database silverorder COLLATE Korean_100_CI_AS_SC_UTF8;

USE [silverorder]
GO
SET IDENTITY_INSERT [dbo].[t_user] ON 

INSERT [dbo].[t_user] ([user_id], [user_api_email], [user_api_key], [user_birth], [user_email], [user_join_date], [user_pw], [user_role], [user_update_date]) VALUES (1, N'aud2531@naver.com', N'22f1a7e1-4461-453a-8b22-4e377f35761f', CAST(N'2000-10-05' AS Date), N'silverorder@gmail.com', CAST(N'2024-10-05T18:15:12.1014600' AS DateTime2), N'$2a$10$S8yF.X1fU/nceNO6XHkI7umURoleEk1xSV44qL7VC8ZCayP1zTnVC', N'ROLE_GENERAL', CAST(N'2024-10-05T18:15:12.1015050' AS DateTime2))
INSERT [dbo].[t_user] ([user_id], [user_api_email], [user_api_key], [user_birth], [user_email], [user_join_date], [user_pw], [user_role], [user_update_date]) VALUES (2, NULL, NULL, CAST(N'1998-12-03' AS Date), N'silverorderAdmin@gmail.com', CAST(N'2024-10-05T18:15:21.4412190' AS DateTime2), N'$2a$10$CJI2PB3B.uDuf6hp.SQQw.tvPwxGM7KDmpEdRlIq3q6ZZt0IMnTp.', N'ROLE_ADMIN', CAST(N'2024-10-05T18:15:21.4412360' AS DateTime2))
SET IDENTITY_INSERT [dbo].[t_user] OFF
GO
INSERT [dbo].[t_store] ([store_id], [account_num], [address], [close_time], [latitude], [longitude], [open_time], [store_category], [store_desc], [store_name], [store_rate], [store_status], [user_id]) VALUES (2176, N'0011618747219014', N'광주 광산구 사암로383번길 6', N'2400', 35.1788629818155, 126.807603511319, N'0000', N'CAFE', N'광주 흑석동 소재 엔제리너스 커피전문점', N'엔제리너스 광주흑석점', 4.2, N'OPEN', 2)
GO
SET IDENTITY_INSERT [dbo].[t_store_menu_category] ON 

INSERT [dbo].[t_store_menu_category] ([menu_category_id], [menu_category_name], [store_id]) VALUES (1, N'커피', 2176)
INSERT [dbo].[t_store_menu_category] ([menu_category_id], [menu_category_name], [store_id]) VALUES (2, N'차', 2176)
INSERT [dbo].[t_store_menu_category] ([menu_category_id], [menu_category_name], [store_id]) VALUES (3, N'디저트', 2176)
SET IDENTITY_INSERT [dbo].[t_store_menu_category] OFF
GO
SET IDENTITY_INSERT [dbo].[t_menu] ON 

INSERT [dbo].[t_menu] ([menu_id], [menu_desc], [menu_name], [menu_price], [menu_status], [recommend], [simple_name], [thumb], [menu_category_id]) VALUES (1, N'풍미가 진한 에스프레소에 물을 넣어 연하게 마시는 아이스 커피입니다.', N'아이스 아메리카노', 4500, N'MENU_READY', 0, N'아이스 아메리카노', N'https://storage.googleapis.com/silver-order-bucket/Angel_ICE_Americano.jpeg', 1)
INSERT [dbo].[t_menu] ([menu_id], [menu_desc], [menu_name], [menu_price], [menu_status], [recommend], [simple_name], [thumb], [menu_category_id]) VALUES (2, N'풍미가 진한 에스프레소에 물을 넣어 연하게 마시는 따뜻한 커피입니다.', N'따뜻한 아메리카노', 4500, N'MENU_READY', 0, N'따뜻한 아메리카노', N'https://storage.googleapis.com/silver-order-bucket/Angel_HOT_Americano.jpg', 1)
INSERT [dbo].[t_menu] ([menu_id], [menu_desc], [menu_name], [menu_price], [menu_status], [recommend], [simple_name], [thumb], [menu_category_id]) VALUES (3, N'농축유를 블렌딩하여 더욱 진하고 고소한 프리미엄 따뜻한 카페라떼', N'따뜻한 로열카페라떼', 5500, N'MENU_READY', 0, N'따뜻한 카페라떼', N'https://storage.googleapis.com/silver-order-bucket/Angel_HOT_Latte.jpg', 1)
INSERT [dbo].[t_menu] ([menu_id], [menu_desc], [menu_name], [menu_price], [menu_status], [recommend], [simple_name], [thumb], [menu_category_id]) VALUES (4, N'농축유를 블렌딩하여 더욱 진하고 고소한 프리미엄 아이스 카페라떼', N'아이스 로열카페라떼', 5500, N'MENU_READY', 0, N'아이스 카페라떼', N'https://storage.googleapis.com/silver-order-bucket/Angel_ICE_Latte.jpg', 1)
INSERT [dbo].[t_menu] ([menu_id], [menu_desc], [menu_name], [menu_price], [menu_status], [recommend], [simple_name], [thumb], [menu_category_id]) VALUES (5, N'더욱 진하고 부드러운 로열골드밀크와 담백한 슈크림의 조화롭고 시원한 크림카페라떼(단일 사이즈 / 크기 변경 불가)', N'아이스 로열슈크림라떼', 5900, N'MENU_READY', 0, N'아이스 슈크림라떼', N'https://storage.googleapis.com/silver-order-bucket/Angel_ICE_CreamLatte.jpg', 1)
INSERT [dbo].[t_menu] ([menu_id], [menu_desc], [menu_name], [menu_price], [menu_status], [recommend], [simple_name], [thumb], [menu_category_id]) VALUES (6, N'풍미가 진한 에스프레소와 고소한 우유에 달콤한 바닐라 시럽이 어우러진 아이스 커피입니다.', N'아이스 바닐라 카페라떼', 5500, N'MENU_READY', 0, N'아이스 바닐라 라떼', N'https://storage.googleapis.com/silver-order-bucket/Angel_ICE_VanillaLatte.jpg', 1)
INSERT [dbo].[t_menu] ([menu_id], [menu_desc], [menu_name], [menu_price], [menu_status], [recommend], [simple_name], [thumb], [menu_category_id]) VALUES (7, N'풍미가 진한 에스프레소와 고소한 스팀 밀크에 달콤한 바닐라 시럽이 어우러진 따뜻한 커피입니다.', N'따뜻한 바닐라 카페라떼', 5500, N'MENU_READY', 0, N'따뜻한 바닐라 라떼', N'https://storage.googleapis.com/silver-order-bucket/Angel_HOT_VanillaLatte.jpg', 1)
INSERT [dbo].[t_menu] ([menu_id], [menu_desc], [menu_name], [menu_price], [menu_status], [recommend], [simple_name], [thumb], [menu_category_id]) VALUES (8, N'달콤한 카라멜과 우유 거품의 부드러운 맛이 에스프레소와 어우러진 아이스 커피입니다.', N'아이스 카라멜 마끼아또', 5900, N'MENU_READY', 0, N'아이스 카라멜 마끼아또', N'https://storage.googleapis.com/silver-order-bucket/Angel_ICE_CaramelMacchiato.jpg', 1)
INSERT [dbo].[t_menu] ([menu_id], [menu_desc], [menu_name], [menu_price], [menu_status], [recommend], [simple_name], [thumb], [menu_category_id]) VALUES (9, N'100% 스웨덴 통귀리의 식물성 오트 음료를 사용하여 커피와 조화롭고 깔끔한 맛의 특징을 가진 시원한 커피', N'아이스 카페오트', 5500, N'MENU_READY', 0, N'아이스 카페오트', N'https://storage.googleapis.com/silver-order-bucket/5e04d712-53e7-48b4-9ab7-cb9a40e0ddb8', 1)
INSERT [dbo].[t_menu] ([menu_id], [menu_desc], [menu_name], [menu_price], [menu_status], [recommend], [simple_name], [thumb], [menu_category_id]) VALUES (10, N'100% 스웨덴 통귀리의 식물성 오트 음료를 스팀하여 커피와 조화롭고 깔끔한 맛의 특징을 가진 따뜻한 커피', N'따뜻한 카페오트', 5500, N'MENU_READY', 0, N'따뜻한 카페오트', N'https://storage.googleapis.com/silver-order-bucket/894e3c97-7454-44f7-9374-c5294e4c9555', 1)
INSERT [dbo].[t_menu] ([menu_id], [menu_desc], [menu_name], [menu_price], [menu_status], [recommend], [simple_name], [thumb], [menu_category_id]) VALUES (11, N'달콤한 카라멜과 우유 거품의 부드러운 맛이 에스프레소와 어우러진 따뜻한 커피입니다.', N'따뜻한 카라멜 마끼아또', 5900, N'MENU_READY', 0, N'따뜻한 카라멜 마끼아또', N'https://storage.googleapis.com/silver-order-bucket/7defed86-7a89-49c5-9269-589aa72b5623', 1)
INSERT [dbo].[t_menu] ([menu_id], [menu_desc], [menu_name], [menu_price], [menu_status], [recommend], [simple_name], [thumb], [menu_category_id]) VALUES (12, N'초콜릿과 생크림의 감미로운 맛이 에스프레소와 어우러진 아이스 커피입니다.', N'아이스 카페모카', 5500, N'MENU_READY', 0, N'아이스 모카', N'https://storage.googleapis.com/silver-order-bucket/6acf2a03-a644-41b5-b027-de066d241f65', 1)
INSERT [dbo].[t_menu] ([menu_id], [menu_desc], [menu_name], [menu_price], [menu_status], [recommend], [simple_name], [thumb], [menu_category_id]) VALUES (13, N'초콜릿과 생크림의 감미로운 맛이 에스프레소와 어우러진 따뜻한 커피입니다.', N'따뜻한 카페모카', 5500, N'MENU_READY', 0, N'따뜻한 모카', N'https://storage.googleapis.com/silver-order-bucket/f80728df-2380-40b2-9437-d7ba97e108c6', 1)
INSERT [dbo].[t_menu] ([menu_id], [menu_desc], [menu_name], [menu_price], [menu_status], [recommend], [simple_name], [thumb], [menu_category_id]) VALUES (14, N'달콤한 연유과 고소한 바닐라 우유의 조화를 이루는 아이스 커피', N'아이스 돌체라떼', 5500, N'MENU_READY', 0, N'아이스 연유라떼', N'https://storage.googleapis.com/silver-order-bucket/6397e03f-2786-4e6d-92bf-8712ac2fafcd', 1)
INSERT [dbo].[t_menu] ([menu_id], [menu_desc], [menu_name], [menu_price], [menu_status], [recommend], [simple_name], [thumb], [menu_category_id]) VALUES (15, N'달콤한 연유과 고소한 바닐라 우유의 조화를 이루는 따뜻한 커피', N'따뜻한 돌체라떼', 5500, N'MENU_READY', 0, N'따뜻한 연유라떼', N'https://storage.googleapis.com/silver-order-bucket/8ebabc0d-2169-4e44-b207-89fd3ab9d634', 1)
INSERT [dbo].[t_menu] ([menu_id], [menu_desc], [menu_name], [menu_price], [menu_status], [recommend], [simple_name], [thumb], [menu_category_id]) VALUES (16, N'찬물로 오랜시간 우려내어 와인처럼 숙성시켜 마시는 고급 원두커피로 한정된 인원만이 즐길 수 있는 차가운 커피입니다.', N'(아이스)콜드브루커피', 5200, N'MENU_READY', 0, N'콜드브루', N'https://storage.googleapis.com/silver-order-bucket/6a953654-da1f-455d-908d-cbd7480dbcee', 1)
INSERT [dbo].[t_menu] ([menu_id], [menu_desc], [menu_name], [menu_price], [menu_status], [recommend], [simple_name], [thumb], [menu_category_id]) VALUES (17, N'향긋한 사과향이 특징인 독일산 100% 프리미엄 캐모마일', N'따뜻한 로얄 캐모마일(R)', 5500, N'MENU_READY', 0, N'따뜻한 캐모마일(R)', N'https://storage.googleapis.com/silver-order-bucket/8a357c20-06a6-4499-adb3-6dd34c937ce3', 2)
INSERT [dbo].[t_menu] ([menu_id], [menu_desc], [menu_name], [menu_price], [menu_status], [recommend], [simple_name], [thumb], [menu_category_id]) VALUES (18, N'천연 베르가못 오일을 블렌딩한 섬세한 홍차와 베르가못의 조화를 이루는 따뜻한 차', N'따뜻한 얼그레이 리저브(R)', 5500, N'MENU_READY', 0, N'따뜻한 얼그레이', N'https://storage.googleapis.com/silver-order-bucket/3f4454f2-f770-476b-a291-2ba8a61481ec', 2)
INSERT [dbo].[t_menu] ([menu_id], [menu_desc], [menu_name], [menu_price], [menu_status], [recommend], [simple_name], [thumb], [menu_category_id]) VALUES (19, N'프리미엄 페퍼민트로 섬세하고 지속적인 청량감이 특징인 따뜻한 차', N'따뜻한 쿨민트(R)', 5500, N'MENU_READY', 0, N'따뜻한 민트티', N'https://storage.googleapis.com/silver-order-bucket/88dce95e-470c-431f-baed-b9e602d43a84', 2)
INSERT [dbo].[t_menu] ([menu_id], [menu_desc], [menu_name], [menu_price], [menu_status], [recommend], [simple_name], [thumb], [menu_category_id]) VALUES (20, N'천연 복숭아 오일을 블렌딩하여 달콤함이 가미된 따뜻한 우롱차', N'따뜻한 피치 우롱(R)', 5800, N'MENU_READY', 0, N'따뜻한 우롱차', N'https://storage.googleapis.com/silver-order-bucket/cc1e9a80-83c4-4945-a1bd-2616bbb6e225', 2)
INSERT [dbo].[t_menu] ([menu_id], [menu_desc], [menu_name], [menu_price], [menu_status], [recommend], [simple_name], [thumb], [menu_category_id]) VALUES (21, N'비타민C가 풍부한 히비스커스, 오렌지, 로즈힙 블렌딩의 따뜻한 허브티', N'따뜻한 크림슨펀치(R)', 5800, N'MENU_READY', 0, N'따뜻한 크림슨펀치', N'https://storage.googleapis.com/silver-order-bucket/2386e145-3ea0-4c1b-8ee1-1a489f2777a4', 2)
INSERT [dbo].[t_menu] ([menu_id], [menu_desc], [menu_name], [menu_price], [menu_status], [recommend], [simple_name], [thumb], [menu_category_id]) VALUES (22, N'얼그레이 홍차의 향긋한 베르가못 향이 은은한 따뜻한 밀크티', N'따뜻한 얼그레이 밀크티(R)', 6600, N'MENU_READY', 0, N'따뜻한 얼그레이 밀크티', N'https://storage.googleapis.com/silver-order-bucket/d90418bb-21ce-4fbd-b18b-267cbc2a0a5a', 2)
INSERT [dbo].[t_menu] ([menu_id], [menu_desc], [menu_name], [menu_price], [menu_status], [recommend], [simple_name], [thumb], [menu_category_id]) VALUES (23, N'부드러운 웰빙라떼로 쌉싸름한 녹차향을 느낄 수 있는 따뜻한 음료, 녹차는 피로회복과 면역력 강화에 좋습니다', N'따뜻한 그린밀크티(R)', 6600, N'MENU_READY', 0, N'따뜻한 녹차 라떼', N'https://storage.googleapis.com/silver-order-bucket/fd23b7e4-75ed-4fc5-aee8-15eabdeeb488', 2)
INSERT [dbo].[t_menu] ([menu_id], [menu_desc], [menu_name], [menu_price], [menu_status], [recommend], [simple_name], [thumb], [menu_category_id]) VALUES (24, N'향긋한 사과향이 특징인 독일산 100% 프리미엄 캐모마일을 우린 시원한 차', N'아이스 로얄 캐모마일(R)', 5500, N'MENU_READY', 0, N'아이스 캐모마일 차', N'https://storage.googleapis.com/silver-order-bucket/e8641539-f4a4-4bd6-906c-6bbcb5c417db', 2)
INSERT [dbo].[t_menu] ([menu_id], [menu_desc], [menu_name], [menu_price], [menu_status], [recommend], [simple_name], [thumb], [menu_category_id]) VALUES (25, N'천연 베르가못 오일을 블렌딩한 섬세한 홍차와 베르가못의 조화를 이루는 시원한 차', N'아이스 얼그레이 리저브(R)', 5500, N'MENU_READY', 0, N'아이스 얼그레이 티', N'https://storage.googleapis.com/silver-order-bucket/ca82734b-f555-4cc9-b046-646877daf5ce', 2)
INSERT [dbo].[t_menu] ([menu_id], [menu_desc], [menu_name], [menu_price], [menu_status], [recommend], [simple_name], [thumb], [menu_category_id]) VALUES (26, N'프리미엄 페퍼민트로 섬세하고 지속적인 청량감이 특징인 시원한 차', N'아이스 쿨민트(R)', 5500, N'MENU_READY', 0, N'아이스 민트티', N'https://storage.googleapis.com/silver-order-bucket/7d6199d8-7c24-4edb-aa16-80631e07bb99', 2)
INSERT [dbo].[t_menu] ([menu_id], [menu_desc], [menu_name], [menu_price], [menu_status], [recommend], [simple_name], [thumb], [menu_category_id]) VALUES (27, N'천연 복숭아 오일을 블렌딩하여 달콤함이 가미된 시원한 우롱차', N'아이스 피치 우롱(R)', 5800, N'MENU_READY', 0, N'아이스 우롱티', N'https://storage.googleapis.com/silver-order-bucket/c748056f-ee96-43cc-a530-9be177fa7eaf', 2)
INSERT [dbo].[t_menu] ([menu_id], [menu_desc], [menu_name], [menu_price], [menu_status], [recommend], [simple_name], [thumb], [menu_category_id]) VALUES (28, N'비타민C가 풍부한 히비스커스, 오렌지, 로즈힙 블렌딩의 시원한 허브티', N'아이스 크림슨펀치(R)', 5800, N'MENU_READY', 0, N'아이스 크림슨펀치', N'https://storage.googleapis.com/silver-order-bucket/d470352f-076d-489b-b7da-279e487872b1', 2)
INSERT [dbo].[t_menu] ([menu_id], [menu_desc], [menu_name], [menu_price], [menu_status], [recommend], [simple_name], [thumb], [menu_category_id]) VALUES (29, N'얼그레이 홍차의 향긋한 베르가못 향이 은은한 시원한 밀크티', N'아이스 얼그레이 밀크티(R)', 6600, N'MENU_READY', 0, N'아이스 얼그레이 밀크티', N'https://storage.googleapis.com/silver-order-bucket/741301a5-7fec-4acc-b132-f04966fce29b', 2)
INSERT [dbo].[t_menu] ([menu_id], [menu_desc], [menu_name], [menu_price], [menu_status], [recommend], [simple_name], [thumb], [menu_category_id]) VALUES (30, N'부드러운 웰빙라떼로 쌉싸름한 녹차향을 느낄 수 있는 아이스 음료, 녹차는 피로회복과 면역력 강화에 좋습니다.', N'아이스 그린밀크티(R)', 6600, N'MENU_READY', 0, N'아이스 녹차 라떼', N'https://storage.googleapis.com/silver-order-bucket/a03d4db0-d7ac-4824-a220-17c1ee81f569', 2)
INSERT [dbo].[t_menu] ([menu_id], [menu_desc], [menu_name], [menu_price], [menu_status], [recommend], [simple_name], [thumb], [menu_category_id]) VALUES (31, N'치즈크림, 가나슈, 누가 크림에 바삭한 비스킷 레이어로 바삭함을 느낄 수 있는 제품', N'초코 크런치 케이크', 6900, N'MENU_READY', 0, N'초코 크런치 케이크', N'https://storage.googleapis.com/silver-order-bucket/0fed3379-515b-4a07-9bfc-45d36a83d42a', 3)
INSERT [dbo].[t_menu] ([menu_id], [menu_desc], [menu_name], [menu_price], [menu_status], [recommend], [simple_name], [thumb], [menu_category_id]) VALUES (32, N'부드러운 크림과 시트에 헤이즐넛을 두르고 딸기로 가득 올린 제품', N'스트로베리 케이크', 6700, N'MENU_READY', 0, N'스트로베리 케이크', N'https://storage.googleapis.com/silver-order-bucket/53d9001e-8833-4fc0-a1ae-090d5c235603', 3)
INSERT [dbo].[t_menu] ([menu_id], [menu_desc], [menu_name], [menu_price], [menu_status], [recommend], [simple_name], [thumb], [menu_category_id]) VALUES (33, N'사과로 가득한 내용물과 시나몬 향이 조화로운 제품', N'프리미엄 애플파이', 5800, N'MENU_READY', 0, N'프리미엄 애플파이', N'https://storage.googleapis.com/silver-order-bucket/23ea24b2-9ffd-4f96-8284-28c88f6816ff', 3)
INSERT [dbo].[t_menu] ([menu_id], [menu_desc], [menu_name], [menu_price], [menu_status], [recommend], [simple_name], [thumb], [menu_category_id]) VALUES (34, N'블루베리와 부드러운 버터밀크 크림이 조화로운 케이크', N'블루베리 버터밀크 트라이앵글', 6500, N'MENU_READY', 0, N'블루베리 버터밀크 트라이앵글', N'https://storage.googleapis.com/silver-order-bucket/df3e8a53-7acd-4748-8cbf-d6c5c90e0902', 3)
SET IDENTITY_INSERT [dbo].[t_menu] OFF
GO
SET IDENTITY_INSERT [dbo].[t_option_category] ON 

INSERT [dbo].[t_option_category] ([option_category_id], [option_category_title], [option_type], [store_id]) VALUES (1, N'원두선택', N'OPTION_RADIO', 2176)
INSERT [dbo].[t_option_category] ([option_category_id], [option_category_title], [option_type], [store_id]) VALUES (2, N'토핑 추가', N'OPTION_RADIO', 2176)
INSERT [dbo].[t_option_category] ([option_category_id], [option_category_title], [option_type], [store_id]) VALUES (3, N'사이즈 선택', N'OPTION_RADIO', 2176)
SET IDENTITY_INSERT [dbo].[t_option_category] OFF
GO
SET IDENTITY_INSERT [dbo].[t_menu_option_category] ON 

INSERT [dbo].[t_menu_option_category] ([menu_option_category_id], [menu_id], [option_category_id]) VALUES (1, 1, 1)
INSERT [dbo].[t_menu_option_category] ([menu_option_category_id], [menu_id], [option_category_id]) VALUES (2, 2, 1)
INSERT [dbo].[t_menu_option_category] ([menu_option_category_id], [menu_id], [option_category_id]) VALUES (3, 3, 1)
INSERT [dbo].[t_menu_option_category] ([menu_option_category_id], [menu_id], [option_category_id]) VALUES (4, 4, 1)
INSERT [dbo].[t_menu_option_category] ([menu_option_category_id], [menu_id], [option_category_id]) VALUES (5, 5, 1)
INSERT [dbo].[t_menu_option_category] ([menu_option_category_id], [menu_id], [option_category_id]) VALUES (6, 6, 1)
INSERT [dbo].[t_menu_option_category] ([menu_option_category_id], [menu_id], [option_category_id]) VALUES (7, 7, 1)
INSERT [dbo].[t_menu_option_category] ([menu_option_category_id], [menu_id], [option_category_id]) VALUES (8, 8, 1)
INSERT [dbo].[t_menu_option_category] ([menu_option_category_id], [menu_id], [option_category_id]) VALUES (23, 9, 1)
INSERT [dbo].[t_menu_option_category] ([menu_option_category_id], [menu_id], [option_category_id]) VALUES (26, 10, 1)
INSERT [dbo].[t_menu_option_category] ([menu_option_category_id], [menu_id], [option_category_id]) VALUES (29, 11, 1)
INSERT [dbo].[t_menu_option_category] ([menu_option_category_id], [menu_id], [option_category_id]) VALUES (32, 12, 1)
INSERT [dbo].[t_menu_option_category] ([menu_option_category_id], [menu_id], [option_category_id]) VALUES (35, 13, 1)
INSERT [dbo].[t_menu_option_category] ([menu_option_category_id], [menu_id], [option_category_id]) VALUES (38, 14, 1)
INSERT [dbo].[t_menu_option_category] ([menu_option_category_id], [menu_id], [option_category_id]) VALUES (41, 15, 1)
INSERT [dbo].[t_menu_option_category] ([menu_option_category_id], [menu_id], [option_category_id]) VALUES (9, 1, 2)
INSERT [dbo].[t_menu_option_category] ([menu_option_category_id], [menu_id], [option_category_id]) VALUES (10, 2, 2)
INSERT [dbo].[t_menu_option_category] ([menu_option_category_id], [menu_id], [option_category_id]) VALUES (11, 3, 2)
INSERT [dbo].[t_menu_option_category] ([menu_option_category_id], [menu_id], [option_category_id]) VALUES (12, 4, 2)
INSERT [dbo].[t_menu_option_category] ([menu_option_category_id], [menu_id], [option_category_id]) VALUES (13, 6, 2)
INSERT [dbo].[t_menu_option_category] ([menu_option_category_id], [menu_id], [option_category_id]) VALUES (14, 7, 2)
INSERT [dbo].[t_menu_option_category] ([menu_option_category_id], [menu_id], [option_category_id]) VALUES (15, 8, 2)
INSERT [dbo].[t_menu_option_category] ([menu_option_category_id], [menu_id], [option_category_id]) VALUES (24, 9, 2)
INSERT [dbo].[t_menu_option_category] ([menu_option_category_id], [menu_id], [option_category_id]) VALUES (27, 10, 2)
INSERT [dbo].[t_menu_option_category] ([menu_option_category_id], [menu_id], [option_category_id]) VALUES (30, 11, 2)
INSERT [dbo].[t_menu_option_category] ([menu_option_category_id], [menu_id], [option_category_id]) VALUES (33, 12, 2)
INSERT [dbo].[t_menu_option_category] ([menu_option_category_id], [menu_id], [option_category_id]) VALUES (36, 13, 2)
INSERT [dbo].[t_menu_option_category] ([menu_option_category_id], [menu_id], [option_category_id]) VALUES (39, 14, 2)
INSERT [dbo].[t_menu_option_category] ([menu_option_category_id], [menu_id], [option_category_id]) VALUES (42, 15, 2)
INSERT [dbo].[t_menu_option_category] ([menu_option_category_id], [menu_id], [option_category_id]) VALUES (16, 1, 3)
INSERT [dbo].[t_menu_option_category] ([menu_option_category_id], [menu_id], [option_category_id]) VALUES (17, 2, 3)
INSERT [dbo].[t_menu_option_category] ([menu_option_category_id], [menu_id], [option_category_id]) VALUES (18, 3, 3)
INSERT [dbo].[t_menu_option_category] ([menu_option_category_id], [menu_id], [option_category_id]) VALUES (19, 4, 3)
INSERT [dbo].[t_menu_option_category] ([menu_option_category_id], [menu_id], [option_category_id]) VALUES (20, 6, 3)
INSERT [dbo].[t_menu_option_category] ([menu_option_category_id], [menu_id], [option_category_id]) VALUES (21, 7, 3)
INSERT [dbo].[t_menu_option_category] ([menu_option_category_id], [menu_id], [option_category_id]) VALUES (22, 8, 3)
INSERT [dbo].[t_menu_option_category] ([menu_option_category_id], [menu_id], [option_category_id]) VALUES (25, 9, 3)
INSERT [dbo].[t_menu_option_category] ([menu_option_category_id], [menu_id], [option_category_id]) VALUES (28, 10, 3)
INSERT [dbo].[t_menu_option_category] ([menu_option_category_id], [menu_id], [option_category_id]) VALUES (31, 11, 3)
INSERT [dbo].[t_menu_option_category] ([menu_option_category_id], [menu_id], [option_category_id]) VALUES (34, 12, 3)
INSERT [dbo].[t_menu_option_category] ([menu_option_category_id], [menu_id], [option_category_id]) VALUES (37, 13, 3)
INSERT [dbo].[t_menu_option_category] ([menu_option_category_id], [menu_id], [option_category_id]) VALUES (40, 14, 3)
INSERT [dbo].[t_menu_option_category] ([menu_option_category_id], [menu_id], [option_category_id]) VALUES (43, 15, 3)
INSERT [dbo].[t_menu_option_category] ([menu_option_category_id], [menu_id], [option_category_id]) VALUES (44, 16, 3)
SET IDENTITY_INSERT [dbo].[t_menu_option_category] OFF
GO
SET IDENTITY_INSERT [dbo].[t_payment] ON 

INSERT [dbo].[t_payment] ([payment_id], [payment_type], [user_id]) VALUES (1, N'PAYMENT_CARD', 1)
INSERT [dbo].[t_payment] ([payment_id], [payment_type], [user_id]) VALUES (2, N'PAYMENT_CARD', 1)
INSERT [dbo].[t_payment] ([payment_id], [payment_type], [user_id]) VALUES (3, N'PAYMENT_CARD', 1)
INSERT [dbo].[t_payment] ([payment_id], [payment_type], [user_id]) VALUES (4, N'PAYMENT_CARD', 1)
SET IDENTITY_INSERT [dbo].[t_payment] OFF
GO
SET IDENTITY_INSERT [dbo].[t_order] ON 

INSERT [dbo].[t_order] ([order_id], [order_date], [order_status], [order_time], [pay_price], [require], [trade_num], [payment_id], [store_id]) VALUES (1, CAST(N'2024-10-07' AS Date), N'ORDER_DONE', CAST(N'2024-10-07T10:24:41.3414310' AS DateTime2), 10200, N'', 294, 4, 2176)
SET IDENTITY_INSERT [dbo].[t_order] OFF
GO
SET IDENTITY_INSERT [dbo].[t_order_menu] ON 

INSERT [dbo].[t_order_menu] ([order_menu_id], [menu_amount], [menu_price], [menu_id], [order_id]) VALUES (1, 1, 4500, 2, 1)
INSERT [dbo].[t_order_menu] ([order_menu_id], [menu_amount], [menu_price], [menu_id], [order_id]) VALUES (2, 1, 5700, 1, 1)
SET IDENTITY_INSERT [dbo].[t_order_menu] OFF
GO
SET IDENTITY_INSERT [dbo].[t_proc_age_menu_sales] ON 

INSERT [dbo].[t_proc_age_menu_sales] ([proc_id], [insert_date], [proc_date], [proc_menu_amount], [purchase_age], [menu_id], [store_id]) VALUES (1, CAST(N'2024-10-07' AS Date), CAST(N'2024-10-07' AS Date), 1, 20, 1, 2176)
INSERT [dbo].[t_proc_age_menu_sales] ([proc_id], [insert_date], [proc_date], [proc_menu_amount], [purchase_age], [menu_id], [store_id]) VALUES (2, CAST(N'2024-10-07' AS Date), CAST(N'2024-10-07' AS Date), 1, 20, 2, 2176)
SET IDENTITY_INSERT [dbo].[t_proc_age_menu_sales] OFF
GO
SET IDENTITY_INSERT [dbo].[t_option] ON 

INSERT [dbo].[t_option] ([option_id], [option_name], [option_price], [option_category_id]) VALUES (1, N'너티', 0, 1)
INSERT [dbo].[t_option] ([option_id], [option_name], [option_price], [option_category_id]) VALUES (2, N'디카페인', 200, 1)
INSERT [dbo].[t_option] ([option_id], [option_name], [option_price], [option_category_id]) VALUES (3, N'에스프레소샷 추가', 500, 2)
INSERT [dbo].[t_option] ([option_id], [option_name], [option_price], [option_category_id]) VALUES (4, N'휘핑크림 추가', 500, 2)
INSERT [dbo].[t_option] ([option_id], [option_name], [option_price], [option_category_id]) VALUES (5, N'초코시럽 추가', 500, 2)
INSERT [dbo].[t_option] ([option_id], [option_name], [option_price], [option_category_id]) VALUES (6, N'카라멜시럽 추가', 500, 2)
INSERT [dbo].[t_option] ([option_id], [option_name], [option_price], [option_category_id]) VALUES (7, N'바닐라시럽 추가', 500, 2)
INSERT [dbo].[t_option] ([option_id], [option_name], [option_price], [option_category_id]) VALUES (8, N'헤이즐넛시럽 추가', 500, 2)
INSERT [dbo].[t_option] ([option_id], [option_name], [option_price], [option_category_id]) VALUES (9, N'Small', 0, 3)
INSERT [dbo].[t_option] ([option_id], [option_name], [option_price], [option_category_id]) VALUES (10, N'Regular', 500, 3)
INSERT [dbo].[t_option] ([option_id], [option_name], [option_price], [option_category_id]) VALUES (11, N'Large', 1000, 3)
SET IDENTITY_INSERT [dbo].[t_option] OFF
GO
SET IDENTITY_INSERT [dbo].[t_order_option] ON 

INSERT [dbo].[t_order_option] ([order_option_id], [option_id], [order_menu_id]) VALUES (1, 2, 2)
INSERT [dbo].[t_order_option] ([order_option_id], [option_id], [order_menu_id]) VALUES (2, 3, 2)
INSERT [dbo].[t_order_option] ([order_option_id], [option_id], [order_menu_id]) VALUES (3, 10, 2)
SET IDENTITY_INSERT [dbo].[t_order_option] OFF
GO
INSERT [dbo].[t_card] ([card_cvc], [card_issuer_name], [card_name], [card_num], [discount_rate], [payment_id]) VALUES (N'310', N'KB국민카드', N'SSAFY 스마일카드', N'1001497122655651', 10, 1)
INSERT [dbo].[t_card] ([card_cvc], [card_issuer_name], [card_name], [card_num], [discount_rate], [payment_id]) VALUES (N'484', N'삼성카드', N'삼성카드 taptap 20', N'1002841032046326', NULL, 2)
INSERT [dbo].[t_card] ([card_cvc], [card_issuer_name], [card_name], [card_num], [discount_rate], [payment_id]) VALUES (N'500', N'롯데카드', N'디지로카 SEOUL', N'1003146570590882', 20, 3)
INSERT [dbo].[t_card] ([card_cvc], [card_issuer_name], [card_name], [card_num], [discount_rate], [payment_id]) VALUES (N'299', N'롯데카드', N'디지로카London', N'1003839006311502', 20, 4)
GO
SET IDENTITY_INSERT [dbo].[t_proc_sales] ON 

INSERT [dbo].[t_proc_sales] ([proc_id], [insert_date], [proc_daily_sales], [proc_date], [store_id]) VALUES (1, CAST(N'2024-10-07' AS Date), 10200, CAST(N'2024-10-07' AS Date), 2176)
SET IDENTITY_INSERT [dbo].[t_proc_sales] OFF
GO
