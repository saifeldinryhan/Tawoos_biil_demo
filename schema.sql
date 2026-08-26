-- ----------------------------------------------------------
-- MDB Tools - A library for reading MS Access database files
-- Copyright (C) 2000-2011 Brian Bruns and others.
-- Files in libmdb are licensed under LGPL and the utilities under
-- the GPL, see COPYING.LIB and COPYING files respectively.
-- Check out http://mdbtools.sourceforge.net
-- ----------------------------------------------------------

-- That file uses encoding UTF-8

CREATE TABLE [Bal_Sheet_Cus]
 (
	[Op_ID]			Long Integer, 
	[Cus_Code]			Long Integer, 
	[Op_Date]			DateTime, 
	[Am_On]			Double, 
	[Am_For]			Double, 
	[RRem]			Text (150), 
	[User_N]			Text (50), 
	[Op_Time]			Text (20)
);

CREATE TABLE [Bal_Sheet_Supp]
 (
	[Op_ID]			Long Integer, 
	[F_Code]			Long Integer, 
	[Op_Date]			DateTime, 
	[Am_On]			Double, 
	[Am_For]			Double, 
	[RRem]			Text (150), 
	[User_N]			Text (50), 
	[Op_Time]			Text (20)
);

CREATE TABLE [Cash1]
 (
	[Op_ID]			Long Integer, 
	[Op_Date]			DateTime, 
	[Am_In]			Double, 
	[Am_Out]			Double, 
	[RRem]			Text (150), 
	[User_N]			Text (50), 
	[Op_Time]			Text (20), 
	[Main_Item]			Text (50)
);

CREATE TABLE [Cus_Names]
 (
	[Cus_Code]			Long Integer, 
	[Cus_Name]			Text (30), 
	[Cus_City]			Text (50), 
	[Cus_Address]			Text (50), 
	[Tel_1]			Text (12), 
	[Tel_2]			Text (12)
);

CREATE TABLE [Emp_Data]
 (
	[Emp_Code]			Long Integer, 
	[Emp_Name]			Text (30), 
	[Emp_Address]			Text (50), 
	[Emp_Tel]			Text (12), 
	[Bas_Sal]			Double, 
	[H_Count]			Long Integer, 
	[J_Date]			DateTime, 
	[F_Date]			DateTime, 
	[Emp_Status]			Boolean NOT NULL, 
	[RRem]			Text (50)
);

CREATE TABLE [Emp_Sal]
 (
	[Op_ID]			Long Integer, 
	[Emp_Code]			Long Integer, 
	[Op_Date]			DateTime, 
	[Am_For]			Double, 
	[Am_On]			Double, 
	[Op_Kind]			Text (4), 
	[RRem]			Text (50)
);

CREATE TABLE [Factory_Data]
 (
	[F_Code]			Long Integer NOT NULL, 
	[F_Name]			Text (30), 
	[F_Manager]			Text (30), 
	[F_Address]			Text (50), 
	[Tel1]			Text (12), 
	[Tel2]			Text (12), 
	[Tel3]			Text (12), 
	[Acc1]			Text (25), 
	[Acc_B1]			Text (15), 
	[Acc2]			Text (25), 
	[Acc_B2]			Text (15), 
	[Acc3]			Text (25), 
	[Acc_B3]			Text (15)
);

CREATE TABLE [Inv_Purch_Base]
 (
	[Inv_No]			Text (9), 
	[Fact_Inv_No]			Text (7), 
	[Inv_Date]			DateTime, 
	[F_Code]			Text (4), 
	[Inv_Amount]			Double, 
	[Inv_Disc]			Single, 
	[P_Amount]			Double, 
	[RRem]			Text (100), 
	[User_Name]			Text (50), 
	[Inv_Time]			DateTime, 
	[Edit_By]			Text (50), 
	[Edited_Date]			DateTime, 
	[Edit_Time]			DateTime
);

CREATE TABLE [Inv_Purch_Det]
 (
	[Op_ID]			Long Integer, 
	[Inv_No]			Double, 
	[I_Code]			Double, 
	[Qu1]			Long Integer, 
	[P_Price]			Double
);

CREATE TABLE [Inv_Purch_Det_Edit]
 (
	[Op_ID]			Long Integer, 
	[Inv_No]			Double, 
	[I_Code]			Double, 
	[I_Name]			Text (50), 
	[Qu1]			Long Integer, 
	[P_Price]			Double
);

CREATE TABLE [Inv_RePurch_Base]
 (
	[Inv_No]			Double, 
	[Inv_Date]			DateTime, 
	[F_Code]			Long Integer, 
	[Inv_Amount]			Double, 
	[Inv_Disc]			Single, 
	[P_Amount]			Double, 
	[RRem]			Text (100), 
	[User_Name]			Text (50), 
	[Inv_Time]			DateTime, 
	[Edit_By]			Text (50), 
	[Edited_Date]			DateTime, 
	[Edit_Time]			DateTime
);

CREATE TABLE [Inv_RePurch_Det]
 (
	[Op_ID]			Long Integer, 
	[Inv_No]			Double, 
	[I_Code]			Double, 
	[Qu1]			Long Integer, 
	[P_Price]			Double
);

CREATE TABLE [Inv_ReSale_Base]
 (
	[Inv_No]			Double, 
	[Inv_Date]			DateTime, 
	[Cus_Name]			Text (40), 
	[Bag_Count]			Long Integer, 
	[Inv_Amount]			Double, 
	[Inv_Disc]			Double, 
	[P_Amount]			Double, 
	[RRem]			Text (20), 
	[Saler_N]			Text (20), 
	[Inv_Time]			Text (50)
);

CREATE TABLE [Inv_ReSale_Base_Tmp]
 (
	[Inv_No]			Double, 
	[Inv_Date]			DateTime, 
	[Cus_Name]			Long Integer, 
	[Bag_Count]			Long Integer, 
	[Inv_Amount]			Double, 
	[RRem]			Text (20), 
	[Saler_N]			Text (20), 
	[Inv_Time]			Text (50), 
	[Package_Kind]			Text (10)
);

CREATE TABLE [Inv_ReSale_Det_Edit]
 (
	[Op_ID]			Long Integer, 
	[Inv_No]			Double, 
	[I_Code]			Double, 
	[I_Name]			Text (50), 
	[Qu1]			Long Integer, 
	[S_Price]			Double, 
	[P_Price]			Double
);

CREATE TABLE [Inv_ReSale_Det_Tmp]
 (
	[Op_ID]			Long Integer, 
	[Inv_No]			Double, 
	[I_Code]			Double, 
	[I_Name]			Text (50), 
	[Qu1]			Long Integer, 
	[S_Price]			Double, 
	[P_Price]			Double, 
	[Saler_N]			Text (20)
);

CREATE TABLE [Inv_Sale_Base]
 (
	[Inv_No]			Double, 
	[Inv_Date]			DateTime, 
	[Cus_Name]			Long Integer, 
	[Bag_Count]			Long Integer, 
	[Inv_Amount]			Double, 
	[Inv_Disc]			Double, 
	[P_Amount]			Double, 
	[RRem]			Text (150), 
	[Saler_N]			Text (20), 
	[Inv_Time]			Text (50)
);

CREATE TABLE [Inv_Sale_Base_History]
 (
	[Inv_No]			Double, 
	[Inv_Date]			DateTime, 
	[Cus_Name]			Long Integer, 
	[Bag_Count]			Long Integer, 
	[Inv_Amount]			Double, 
	[RRem]			Text (100), 
	[Saler_N]			Text (20), 
	[Inv_Time]			Text (50), 
	[Package_Kind]			Text (10), 
	[Floor_N]			Text (8)
);

CREATE TABLE [Inv_Sale_Base_Tmp]
 (
	[Inv_No]			Double, 
	[Inv_Date]			DateTime, 
	[Cus_Name]			Long Integer, 
	[Bag_Count]			Long Integer, 
	[Inv_Amount]			Double, 
	[RRem]			Text (100), 
	[Saler_N]			Text (20), 
	[Inv_Time]			Text (50), 
	[Package_Kind]			Text (10), 
	[Floor_N]			Text (8)
);

CREATE TABLE [Inv_Sale_Det]
 (
	[Op_ID]			Long Integer, 
	[Inv_No]			Double, 
	[I_Code]			Double, 
	[I_Name]			Text (50), 
	[Qu1]			Long Integer, 
	[S_Price]			Double, 
	[P_Price]			Double
);

CREATE TABLE [Inv_Sale_Det_Tmp]
 (
	[Op_ID]			Long Integer, 
	[Inv_No]			Double, 
	[I_Code]			Double, 
	[I_Name]			Text (50), 
	[Qu1]			Long Integer, 
	[S_Price]			Double, 
	[P_Price]			Double, 
	[Saler_N]			Text (20), 
	[gggg]			DateTime
);

CREATE TABLE [Items_Names]
 (
	[I_Code]			Double NOT NULL, 
	[I_Name]			Text (50), 
	[Min_Reorder]			Double, 
	[I_P_Price]			Double, 
	[I_S_Price_W]			Double, 
	[I_S_Price_N]			Double, 
	[I_S_Price_P]			Double, 
	[I_Disc]			Single
);

CREATE TABLE [Items_Names21]
 (
	[I_Code]			Double, 
	[I_Name]			Text (50), 
	[Min_Reorder]			Double, 
	[I_P_Price]			Double, 
	[I_S_Price_W]			Double, 
	[I_S_Price_N]			Double, 
	[I_S_Price_P]			Double, 
	[I_Disc]			Single
);

CREATE TABLE [Items_Names555]
 (
	[I_Code]			Double NOT NULL, 
	[I_Name]			Text (50), 
	[Min_Reorder]			Double, 
	[I_P_Price]			Double, 
	[I_S_Price_W]			Double, 
	[I_S_Price_N]			Double, 
	[I_S_Price_P]			Double, 
	[I_Disc]			Single
);

CREATE TABLE [Semsem]
 (
	[User_Name]			Text (50) NOT NULL, 
	[PWD_Value]			Text (20), 
	[PWD_Kind]			Text (10)
);

CREATE TABLE [Supp_Names]
 (
	[Supp_Name]			Text (40) NOT NULL, 
	[Supp_Address]			Text (150), 
	[Tel_1]			Text (20), 
	[Tel_2]			Text (20), 
	[Tel_3]			Text (20)
);

CREATE TABLE [Trans_Op]
 (
	[Op_ID]			Long Integer, 
	[T_No]			Text (40), 
	[Supp_Name]			Text (4), 
	[Sum_Amount]			Double, 
	[Pay_Date]			DateTime, 
	[Edit_Date]			DateTime, 
	[T_Done]			Boolean NOT NULL, 
	[RRem]			Text (100), 
	[Create_By]			Text (50), 
	[Edit_By]			Text (50), 
	[Edited_Date]			DateTime, 
	[Edit_Time]			DateTime, 
	[T_Del]			Boolean NOT NULL, 
	[Del_By]			Text (50), 
	[Del_Date]			DateTime, 
	[Del_Time]			DateTime, 
	[T_Kind]			Boolean NOT NULL
);

CREATE TABLE [أخطاء اللصق]
 (
	[I_Code]			Double
);

CREATE TABLE [نسخة من  Items_Names]
 (
	[I_Code]			Double NOT NULL, 
	[I_Name]			Text (50), 
	[Min_Reorder]			Double, 
	[I_P_Price]			Double, 
	[I_S_Price_W]			Double, 
	[I_S_Price_N]			Double, 
	[I_S_Price_P]			Double, 
	[I_Disc]			Single
);

CREATE TABLE [نسخة من 2 Items_Names]
 (
	[I_Code]			Double NOT NULL, 
	[I_Name]			Text (50), 
	[Min_Reorder]			Double, 
	[I_P_Price]			Double, 
	[I_S_Price_W]			Double, 
	[I_S_Price_N]			Double, 
	[I_S_Price_P]			Double, 
	[I_Disc]			Single
);

CREATE TABLE [نسخة من 3 Items_Names]
 (
	[I_Code]			Double NOT NULL, 
	[I_Name]			Text (50), 
	[Min_Reorder]			Double, 
	[I_P_Price]			Double, 
	[I_S_Price_W]			Double, 
	[I_S_Price_N]			Double, 
	[I_S_Price_P]			Double, 
	[I_Disc]			Single
);

CREATE TABLE [Inv_ReSale_Det]
 (
	[Op_ID]			Long Integer, 
	[Inv_No]			Double, 
	[I_Code]			Double, 
	[I_Name]			Text (50), 
	[Qu1]			Long Integer, 
	[S_Price]			Double, 
	[P_Price]			Double
);

CREATE TABLE [Items_Names_020201]
 (
	[I_Code]			Double NOT NULL, 
	[I_Name]			Text (50), 
	[Min_Reorder]			Double, 
	[I_P_Price]			Double, 
	[I_S_Price_W]			Double, 
	[I_S_Price_N]			Double, 
	[I_S_Price_P]			Double, 
	[I_Disc]			Single
);

CREATE TABLE [Stocks_Q]
 (
	[Item_Code]			Double, 
	[Item_Q]			Double
);


