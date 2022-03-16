import mysql.connector


fbilldb = mysql.connector.connect(
    host="localhost", user="root", password="", database="demobill01", port="3306"
)
fbcursor = fbilldb.cursor()

# fbcursor.execute("""
#                  create table Company(
#                      companyid int AUTO_INCREMENT, 
#                      name varchar(255),
#                      address varchar(255),
#                      email varchar(255),
# 		             salestaxno varchar(255),
#                      currency varchar(255),
#                      currencysign int,
# 		             currsignplace varchar(255),
#                      decimalseperator varchar(255),
#                      excurrency varchar(255),
#                      dateformat varchar(255),
#                      exdate varchar(255),
#                      taxtype varchar(255),
#                      printtaxornot varchar(255),
#                      taxname varchar(255),
#                      taxrate FLOAT,
#                      image BLOB,
#                      printimageornot varchar(255),
#                      PRIMARY KEY(companyid))
#                 """)

# fbcursor.execute("""
#                  create table Productservice(
#                      Productserviceid int AUTO_INCREMENT,
#                      companyid int,
#                      sku varchar(255),
#                      category varchar(255),
#                      name varchar(255),
# 		             description varchar(255),
#                      status varchar(255),
#                      unitprice int,
# 		             peices varchar(255),
#                      cost int,
#                      taxable varchar(255),
#                      priceminuscost int,
#                      serviceornot varchar(255),
#                      stock int,
#                      stocklimit int,
#                      warehouse varchar(255),
#                      privatenote varchar(255),
#                      image BLOB,
#                      PRIMARY KEY(Productserviceid),
#                      FOREIGN KEY (companyid) REFERENCES Company (companyid) ON DELETE CASCADE)
#                 """)

# fbcursor.execute("""
#                  create table Customer(
#                      customerid int AUTO_INCREMENT,
#                      companyid int,
#                      category varchar(255),
#                      status varchar(255),
#                      businessname varchar(255),
#                      businessaddress varchar(255),
#                      shipname varchar(255),
#                      shipaddress varchar(255),
#                      contactperson varchar(255),
#                      cpemail varchar(255),
#                      cptelno varchar(255),
#                      cpfax varchar(255),
#                      cpmobileforsms varchar(255),
#                      shipcontactperson varchar(255),
#                      shipcpemail varchar(255),
#                      shipcptelno varchar(255),
#                      shipcpfax varchar(255),
                     
#                      taxexempt varchar(255),
#                      specifictax1 int,
#                      discount int,
                     
#                      country varchar(255),
#                      city varchar(255),
#                      customertype varchar(255),
#                      notes varchar(255),
                     
#                      PRIMARY KEY(customerid),

#                      FOREIGN KEY (companyid) REFERENCES Company (companyid) ON DELETE CASCADE)
#                 """)

# fbcursor.execute("""
#                  create table Expenses(
#                      expensesid int AUTO_INCREMENT,
#                      customerid int,
#                      companyid int,
#                      expense_amount int,
#                      date DATE,
#                      vendor varchar(255),
#                      catagory varchar(255),
#                      description varchar(255),
#                      staff_members varchar(255),
#                      taxable varchar(255),
#                      customer varchar(255),
#                      image varchar(255),
#                      notes varchar(255),
#                      rebillable varchar(255),
#                      invoiced varchar(255),
#                      id_sku int,
#                      rebill_amount int,
#                      PRIMARY KEY(expensesid),
#                      FOREIGN KEY (customerid) REFERENCES Customer (customerid) ON DELETE CASCADE,
#                      FOREIGN KEY (companyid) REFERENCES Company (companyid) ON DELETE CASCADE)
#                 """)