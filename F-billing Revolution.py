from cgitb import text


from itertools import count
from msilib.schema import CheckBox
from pydoc import describe
import string
from tkinter import *
from tkinter import messagebox
from tkinter import ttk
from xmlrpc.client import boolean

from PIL import ImageTk, Image, ImageFile
import pandas as pd
from tkinter.messagebox import showinfo
import tkinter.scrolledtext as scrolledtext
from tkinter.filedialog import askopenfilename
import os
import webbrowser
from tkcalendar import Calendar
from tkcalendar import DateEntry
from datetime import date
from tkinter import filedialog
import subprocess
import mysql.connector
import io
from openpyxl.workbook import Workbook
from openpyxl import load_workbook
import shutil

fbilldb = mysql.connector.connect(
    host="localhost", user="root", password="", database="fbillingsintgrtd", port="3306"
)
fbcursor = fbilldb.cursor()

ImageFile.LOAD_TRUNCATED_IMAGES = True

def reset():
  global root
  root.destroy()

root=Tk()
root.geometry("1360x730")
root.resizable(False, False)
root.title("F-Billing Revolution 2022(FREE version) | Company database:fbillingdb | User:Administrator")
p1 = PhotoImage(file = 'images/fbicon.png')
root.iconphoto(False, p1)


s = ttk.Style()
s.theme_use('default')
s.configure('TNotebook.Tab', background="#999999", width=20, padding=10)
invoices= PhotoImage(file="images/invoice.png")
orders = PhotoImage(file="images/order.png")
estimates = PhotoImage(file="images/estimate.png")
recurring = PhotoImage(file="images/recurring.png")
purchase = PhotoImage(file="images/purchase.png")
expenses = PhotoImage(file="images/expense.png")
customer = PhotoImage(file="images/customer.png")
product = PhotoImage(file="images/package.png")
reports = PhotoImage(file="images/report.png")
setting = PhotoImage(file="images/setting.png")
tick = PhotoImage(file="images/check.png")
warnin = PhotoImage(file="images/sign_warning.png")
cancel = PhotoImage(file="images/close.png")
saves = PhotoImage(file="images/save.png")
folder = PhotoImage(file="images/folder-black.png")
photo11 = PhotoImage(file = "images/invoice-pvt.png")
customer = PhotoImage(file="images/customer.png")
smslog = PhotoImage(file = "images/smslog.png")
video = PhotoImage(file = "images/video.png")
mark1 = PhotoImage(file="images/mark.png")
mark2 = PhotoImage(file="images/mark2.png")
photo10 = PhotoImage(file = "images/text-message.png")
addnew = PhotoImage(file="images/plus.png")
delete = PhotoImage(file="images/delete_E.png")
tabControl = ttk.Notebook(root)
tab1 = ttk.Frame(tabControl)
tab2 = ttk.Frame(tabControl)
tab3=  ttk.Frame(tabControl)
tab4 = ttk.Frame(tabControl)
tab5 = ttk.Frame(tabControl)
tab6=  ttk.Frame(tabControl)
tab7 = ttk.Frame(tabControl)
tab8 = ttk.Frame(tabControl)
tab9 =  ttk.Frame(tabControl)
tab10=  ttk.Frame(tabControl)
tabControl.add(tab1,image=invoices,compound = LEFT, text ='Invoices',)
tabControl.add(tab2,image=orders,compound = LEFT, text ='Orders')
tabControl.add(tab3,image=estimates,compound = LEFT, text ='Estimates')
tabControl.add(tab4,image=recurring,compound = LEFT, text ='Recurring')
tabControl.add(tab5,image=purchase,compound = LEFT, text ='Purchase Orders') 
tabControl.add(tab6,image=expenses,compound = LEFT, text ='Expenses')
tabControl.add(tab7,image=customer,compound = LEFT, text ='Customers')
tabControl.add(tab8,image=product,compound = LEFT, text ='Product/Services')
tabControl.add(tab9,image=reports,compound = LEFT, text ='Report')
tabControl.add(tab10,image=setting,compound = LEFT, text ='Settings')
tabControl.pack(expand = 1, fill ="both")


selectall = PhotoImage(file="images/table_select_all.png")
cut = PhotoImage(file="images/cut.png")
copy = PhotoImage(file="images/copy.png")
paste = PhotoImage(file="images/paste.png")

undo = PhotoImage(file="images/undo.png")
redo = PhotoImage(file="images/redo.png")
bold = PhotoImage(file="images/bold.png")

italics = PhotoImage(file="images/italics.png")
underline = PhotoImage(file="images/underline.png")
left = PhotoImage(file="images/left.png")

right = PhotoImage(file="images/right.png")
center = PhotoImage(file="images/center.png")
hyperlink = PhotoImage(file="images/hyperlink.png")
remove = PhotoImage(file="images/eraser.png")


photo = PhotoImage(file = "images/plus.png")
photo1 = PhotoImage(file = "images/edit.png")
photo2 = PhotoImage(file = "images/delete_E.png")
photo3 = PhotoImage(file = "images/export-file.png")
photo4 = PhotoImage(file = "images/seo.png")
photo5 = PhotoImage(file = "images/printer.png")
photo6 = PhotoImage(file = "images/gmail.png")
photo7 = PhotoImage(file = "images/priewok.png")
photo8 = PhotoImage(file = "images/refresh_E.png")
photo9 = PhotoImage(file = "images/sum.png")
photo10 = PhotoImage(file = "images/text-message.png")


####### TAB 5  Expense Module-############## ASHIQUE #####################################
mainFrame=Frame(relief=GROOVE, bg="#f8f8f2")
mainFrame.pack(side="top", fill=BOTH)

midFrame=Frame(mainFrame, bg="#f5f3f2", height=60)
midFrame.pack(side="top", fill=X)

def add_expense():
    global expamountval,expdate,vn,cn,expdescriptionentry,expstaffentry,checkvarStatus4,cus,rebi,id_sku1,rebill_amoun,exptxt,expenselabelframe,rebill,imge,other
    window = Toplevel()  
    
    window.title("Add new Expense")
    p2 = PhotoImage(file = 'images/fbicon.png')
    window.iconphoto(False, p1)
 
    window.geometry("618x449+380+167")

    innerexpFrame = Frame(window, relief=GROOVE)
    innerexpFrame.pack(side="top",fill=BOTH)

    expenselabelframe = LabelFrame(innerexpFrame,text="Expense Cost",width=580,height=400)
    expenselabelframe.pack(side="top",fill=BOTH,padx=10)


    expamountval = IntVar(expenselabelframe, value='00')
    expamount=Label(expenselabelframe,text="Expense amount:",pady=10,padx=10)
    expamount.place(x=12,y=0)
    expamountentry = Entry(expenselabelframe,width=15,textvariable=expamountval)
    expamountentry.place(x=130,y=10)

    lbl_date=Label(expenselabelframe,text=" Date :",fg='black')
    lbl_date.place(x=380,y=10)
    
    expdate=DateEntry(expenselabelframe)
    expdate.place(x=450,y=12)

    sql = "select businessname from Customer where customertype =%s or customertype =%s"
    val = ('vendor','both(client,vendor)')
    fbcursor.execute(sql,val)
    pdata = fbcursor.fetchall()

    vendor1=Label(expenselabelframe,text="Vendor:",pady=5,padx=10)
    vendor1.place(x=20,y=40)
    vn = StringVar() 
    vendor = ttk.Combobox(expenselabelframe, width = 27, textvariable = vn ) 
      
    # Adding combobox drop down list 
    vendor['values'] = pdata
      
    vendor.place(x=130,y=45) 
    # vendor.current(0)

    categoryexp1=Label(expenselabelframe,text="Category:",pady=5,padx=10)
    categoryexp1.place(x=330,y=40)
    cn = StringVar() 
    categorydrop = ttk.Combobox(expenselabelframe, width = 22, textvariable = cn ) 
      
    # Adding combobox drop down list 
    categorydrop['values'] = ('Default' ) 
      
    categorydrop.place(x=400,y=45) 
    categorydrop.current(0)

    

    expdescription=Label(expenselabelframe,text="Description:",pady=10,padx=10)
    expdescription.place(x=12,y=70)
    expdescriptionentry = Entry(expenselabelframe,width=70)
    expdescriptionentry.place(x=130,y=81)

    expstafftval = StringVar(expenselabelframe, value='Administrator')
    expstaff=Label(expenselabelframe,text="Staff member:",pady=10,padx=10)
    expstaff.place(x=12,y=108)
    expstaffentry = Entry(expenselabelframe,width=30,textvariable=expstafftval)
    expstaffentry.place(x=130,y=118)

    checkvarStatus4=BooleanVar()
   
    Button4 = Checkbutton(expenselabelframe,variable = checkvarStatus4, 
                      text="Taxable Tax1 rate", 
                      onvalue ='Yes' ,
                      offvalue = 'No',
                      height=3,
                      width = 15)


    Button4.place(x=400,y=120)

    sql = "select businessname from Customer"
    fbcursor.execute(sql,)
    cusdata = fbcursor.fetchall()
    print(cusdata)

    def toggle():
      if other.get():
        ent.place(x=45,y=180)
        button51.place(x=250, y=160)
      else:
        ent.place_forget()
        button51.place_forget()
    other = BooleanVar()
    button5 = Checkbutton(expenselabelframe, text="Assign to customer (optional)", variable=other, 
    command=toggle)
    button5.place(x=40, y=160)
    cus = StringVar()
    ent=ttk.Combobox(expenselabelframe,width=30,textvariable=cus,values=cusdata)

    ent.delete(0,'end')
    def toggle():
      if rebill.get():
        id_skulabel.place(x=375,y=160)
        id_skuentry.place(x=420,y=160)
        rebill_label.place(x=335,y=180)
        rebill_entry.place(x=420, y=180)
      else:
        id_skulabel.place_forget()
        id_skuentry.place_forget()
        rebill_label.place_forget()
        rebill_entry.place_forget()
    rebill = BooleanVar()
    rebi = StringVar()
    button51 = Checkbutton(expenselabelframe, text="Rebillable" ,variable=rebill, command=toggle,onvalue ='Yes' ,offvalue = 'NO')
    
    
    id_sku1 = IntVar()
    id_skulabel=Label(expenselabelframe,text="id_sku:")
    id_skuentry = Entry(expenselabelframe,width=15,textvariable=id_sku1)
   

    rebill_amoun = IntVar()
    rebill_label=Label(expenselabelframe,text="Rebill amount:")
    rebill_entry = Entry(expenselabelframe,width=15,textvariable=rebill_amoun)
    


    
    
    def toggle():
      if imge.get():
        browseimg.place(x=40,y=220)
        browsebutton.place(x=350,y=220,height=30,width=50)
        
      else:
        browseimg.place_forget()
        browsebutton.place_forget()
      
    imge = BooleanVar()
    Button6 = Checkbutton(expenselabelframe, text = "Attach receipt image(optional,image will be stored to the database)",command=toggle,variable=imge)
    Button6.place(x=40, y=200)
    browseimg=Label(expenselabelframe,text="(recommended image type:JPG,size 480x320 pixels) ",bg='#f5f3f2')
    browsebutton=Button(expenselabelframe,text = 'Browse',command=upload_file)


    exptext1=Label(expenselabelframe,text="Notes",pady=5,padx=10)
    exptext1.place(x=12,y=246)
    exptxt = scrolledtext.ScrolledText(expenselabelframe, undo=True,width=50,height=5)
    exptxt.place(x=22,y=280)

    expokButton = Button(window, text ="Ok",image=tick,width=70,compound = LEFT,command=insert_expenses)
    expokButton.place(x=280,y=415)

    window.mainloop()

def upload_file():
      import shutil
      global filename,img, b2
      f_types =[('Png files','*.png'),('Jpg Files', '*.jpg')]
      filename = filedialog.askopenfilename(filetypes=f_types)
      print(filename, 'name')
      #import pdb; pdb.set_trace()
      shutil.copyfile(filename, os.getcwd()+'/images/'+filename.split('/')[-1])
      image = Image.open(filename)
      resize_image = image.resize((120, 120))
      img = ImageTk.PhotoImage(resize_image)
      b2 = Label(expenselabelframe,image=img, height=120, width=120)
      b2.place(x=450, y=240)
      
      




def insert_expenses():# Storing values into db (user)
  global img , filename 
  expense_amount = expamountval.get()
  date = expdate.get_date()
  vendor = vn.get()
  catagory = cn.get()
  description = expdescriptionentry.get()
  staff_members = expstaffentry.get()
  taxable = checkvarStatus4.get()
  customer = cus.get()
  id_sku = id_sku1.get()
  notes = exptxt.get('1.0', 'end-1c')
  rebill_amount = rebill_amoun.get()
  rebillab = rebill.get()
  recipt = imge.get()
  assign_cus = other.get()

  
  

  # file=open(filename,'rb').read() # filename from upload_file()
  # file = base64.b64encode(file)

  # sql='INSERT INTO Expenses (expense_amount,date,vendor,catagory,description,staff_members,taxable,customer,id_sku,notes,rebill_amount,rebillable) VALUES(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)' #adding values into db
  # val=(expense_amount,date,vendor,catagory,description,staff_members,taxable,customer,id_sku,notes,rebill_amount,rebillab)
  # fbcursor.execute(sql,val)
  # fbilldb.commit()


  shutil.copyfile(filename, os.getcwd()+'/images/'+filename.split('/')[-1])
  sql='INSERT INTO Expenses (expense_amount,date,vendor,catagory,description,staff_members,taxable,customer,id_sku,notes,rebill_amount,image,rebillable,receipt,assign_customer) VALUES(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)' #adding values into db
  val=(expense_amount,date,vendor,catagory,description,staff_members,taxable,customer,id_sku,notes,  rebill_amount,filename.split('/')[-1],rebillab,recipt,assign_cus)
  fbcursor.execute(sql,val)
  fbilldb.commit()


  for record in exp_tree.get_children():
    exp_tree.delete(record)
  count=0
  fbcursor.execute('SELECT * FROM Expenses;')
  for i in fbcursor:
    if True:
      if i[13] == '1':
        e = 'Yes'
      else:
        e = 'No'
      exp_tree.insert(parent='', index='end', iid=i, text='hello', values=(i[0], i[10], i[4], i[6], i[5], i[8], i[7], e , i[14], i[11],i[16],i[3]))
      pass
  count += 1
#     fbcursor.execute('SELECT * FROM Expenses;')
#   j = 0
#   for i in fbcursor:
#     exp_tree.insert(parent='', index='end', iid=i, text='hello', values=(i[0], i[10], i[4], i[6], i[5], i[8], i  [7], i[13], i[14], i[11],i[16],i[3]))
#   j += 1
  messagebox.showinfo('Registration successfull','Registration successfull')

  

########################VIEW/EDIT EXPENSE#######################################################################



def edit_expense():
    global expamountval,expdate,vn,cn,expdescriptionentry,expstafftval,checkvarStatus4,cus,rebi,id_sku1,rebill_amoun,exptxt,expenselabelframe,recimage
    try:
      itemid = exp_tree.item(exp_tree.focus())["values"][0]
      sql = "select * from Expenses where expensesid = %s"
      val = (itemid, )

      fbcursor.execute(sql, val)
      psdata = fbcursor.fetchone()

      def update_expenses():# Storing values into db (user)
        global img , filename 
        itemid = exp_tree.item(exp_tree.focus())["values"][0]
        expense_amount = expamountval.get()
        date = expdate.get_date()
        vendor = vn.get()
        catagory = cn.get()
        description = expdescriptionentry.get()
        staff_members = expstafftval.get()
        taxable = checkvarStatus4.get()
        customer = cus.get()
        id_sku = id_sku1.get()
        notes = exptxt.get('1.0', 'end-1c')
        rebill_amount = rebill_amoun.get()
        rebillabe = rebill.get()
        assign_cus = other.get()
        recepit = imge.get()


        
        itemid1 = exp_tree.item(exp_tree.focus())["values"][0]
        sq = 'select image from Expenses where expensesid = %s'
        va =(itemid1,)
        fbcursor.execute(sq,va)
        up = fbcursor.fetchone()
        print(up,recimage)
        # file = shutil.copyfile(filename, os.getcwd()+'/images/'+filename.split('/')[-1])
        if up:
          sql='UPDATE Expenses set expense_amount=%s,date=%s,vendor=%s,catagory=%s,description=%s,    staff_members=%s,taxable=%s,customer=%s,id_sku=%s,notes=%s,rebill_amount=%s,rebillable=%s,assign_customer=%s,receipt=%s where expensesid=%s'
          val=(expense_amount,date,vendor,catagory,description,staff_members,taxable,customer,id_sku,notes,
          rebill_amount,rebillabe,assign_cus,recepit,itemid)
          fbcursor.execute(sql,val)
        else:
          pass
        try:
          file = shutil.copyfile(filename, os.getcwd()+'/images/'+filename.split('/')[-1])
          sql='UPDATE Expenses set expense_amount=%s,date=%s,vendor=%s,catagory=%s,description=%s,    staff_members=%s,taxable=%s,customer=%s,id_sku=%s,notes=%s,rebill_amount=%s,image=%s,rebillable=%s,assign_customer=%s,receipt=%s where expensesid=%s'
          val=(expense_amount,date,vendor,catagory,description,staff_members,taxable,customer,id_sku,notes,
          rebill_amount,filename.split('/')[-1],rebillabe,assign_cus,recepit,itemid)
          fbcursor.execute(sql,val)
        except:
          pass

        fbilldb.commit()
        for record in exp_tree.get_children():
            exp_tree.delete(record)
        count=0
        fbcursor.execute('SELECT * FROM Expenses;')
        for i in fbcursor:
            if True:
              if i[13] == '1':
                e = 'Yes'
              else:
                e = 'No'
              exp_tree.insert(parent='', index='end', iid=i, text='hello', values=(i[0], i[10], i[4], i[6], i[5], i[8], i[7], e , i[14], i[11],i[16],i[3]))
            else:
                pass
        count += 1
        messagebox.showinfo('Update Successfull','Update Successfull')
      
      
      window1 = Toplevel()  
      
      window1.title("Edit Expense")
      p2 = PhotoImage(file = 'images/fbicon.png')
      # recimage= PhotoImage(file= 'images/'+psdata[11])
     
      # image = Image.open(recimage)
      # resize_image = image.resize((120, 120))
      # imga = ImageTk.PhotoImage(resize_image)
      window1.iconphoto(False, p1)
   
      window1.geometry("618x449+380+167")
  
      innerexpFrame = Frame(window1, relief=GROOVE)
      innerexpFrame.pack(side="top",fill=BOTH)
  
      expenselabelframe = LabelFrame(innerexpFrame,text="Expense Cost",width=580,height=400)
      expenselabelframe.pack(side="top",fill=BOTH,padx=10)
  
  
      expamountval = IntVar(expenselabelframe, value='$.00')
      expamount=Label(expenselabelframe,text="Expense amount:",pady=10,padx=10)
      expamount.place(x=12,y=0)
      expamountentry = Entry(expenselabelframe,width=15,textvariable=expamountval)
      expamountentry.place(x=130,y=10)
      expamountentry.delete(0,'end')
      expamountentry.insert(0, psdata[3])
  
      lbl_date=Label(expenselabelframe,text=" Date :",fg='black')
      lbl_date.place(x=380,y=10)
      
      
      expdate=DateEntry(expenselabelframe)
      expdate.place(x=450,y=12)
      expdate.delete(0,'end')
      expdate.insert(0, psdata[4])

      sql = "select businessname from Customer where customertype =%s or customertype =%s"
      val = ('vendor','both(client,vendor)')
      fbcursor.execute(sql,val)
      pdat = fbcursor.fetchall()
      vendor1=Label(expenselabelframe,text="Vendor:",pady=5,padx=10)
      vendor1.place(x=20,y=40)
      vn = StringVar() 
      vendor = ttk.Combobox(expenselabelframe, width = 27, textvariable = vn ) 
     
        
      # Adding combobox drop down list 
      vendor['values'] = pdat
        
      vendor.place(x=130,y=45) 
      vendor.delete(0,'end')
      vendor.insert(0, psdata[5]) 
  
      categoryexp1=Label(expenselabelframe,text="Category:",pady=5,padx=10)
      categoryexp1.place(x=330,y=40)
      cn = StringVar() 
      categorydrop = ttk.Combobox(expenselabelframe, width = 22, textvariable = cn ) 
      categorydrop.delete(0,'end')
      categorydrop.insert(0, psdata[6])
   
        
      # Adding combobox drop down list 
      categorydrop['values'] = ('Default') 
        
      categorydrop.place(x=400,y=45)
    
  
      
  
      expdescription=Label(expenselabelframe,text="Description:",pady=10,padx=10)
      expdescription.place(x=12,y=70)
      expdescriptionentry = Entry(expenselabelframe,width=70)
      expdescriptionentry.place(x=130,y=81)
      expdescriptionentry.delete(0,'end')
      expdescriptionentry.insert(0, psdata[7])
  
      expstafftval = StringVar(expenselabelframe, value='Administrator')
      expstaff=Label(expenselabelframe,text="Staff member:",pady=10,padx=10)
      expstaff.place(x=12,y=108)
      expstaffentry = Entry(expenselabelframe,width=30,textvariable=expstafftval)
      expstaffentry.place(x=130,y=118)
      expstaffentry.delete(0,'end')
      expstaffentry.insert(0, psdata[8])


      
      

  
      checkvarStatus4=BooleanVar()
     
      Button4 = Checkbutton(expenselabelframe,variable = checkvarStatus4, 
                        text="Taxable Tax1 rate", 
                        onvalue ='1',
                        offvalue = '0',
                        height=3,
                        width = 15)
  
      Button4.place(x=400,y=120)
      # Button4.bind("<Button-1>", getBool)
      
      ps = psdata[9]
      print(ps)
      if ps == '1':
       Button4.select()
      else:
        Button4.deselect()
          
      
 
  
      sql = "select businessname from Customer"
      fbcursor.execute(sql,)
      cusdta = fbcursor.fetchall()
      
  
      def toggle():
        if other.get():
          ent.place(x=45,y=180)
          button51.place(x=250, y=160)
        else:
          ent.place_forget()
          button51.place_forget()
      other = BooleanVar()
      button5 = Checkbutton(expenselabelframe, text="Assign to customer (optional)", variable=other, 
      command=toggle)
      button5.place(x=40, y=160)
      cus = StringVar()
      ent=ttk.Combobox(expenselabelframe,width=30,textvariable=cus)
      ent['values'] = cusdta
      ent.delete(0,'end')
      ent.insert(0, psdata[10])

      




  
      # def va():
      #   id_skulabel.place(x=375,y=160)
      #   id_skuentry.place(x=420,y=160)
      #   rebill_label.place(x=335,y=180)
      #   rebill_entry.place(x=420, y=180)

      def toggle():
        if rebill.get():
          id_skulabel.place(x=375,y=160)
          id_skuentry.place(x=420,y=160)
          rebill_label.place(x=335,y=180)
          rebill_entry.place(x=420, y=180)
        else:
          id_skulabel.place_forget()
          id_skuentry.place_forget()
          rebill_label.place_forget()
          rebill_entry.place_forget()
      rebill = BooleanVar()
      rebi = IntVar
      button51 = Checkbutton(expenselabelframe, text="Rebillable" ,variable=rebill, command=toggle)
      
      cns = psdata[17]
      if cns == '1':
        button5.select()
        ent.place(x=45,y=180)
        button51.place(x=250, y=160)
      else:
        button5.deselect()
        
      
      
      id_sku1 = IntVar(expenselabelframe, value='-Expense-')
      id_skulabel=Label(expenselabelframe,text="id_sku:")
      id_skuentry = Entry(expenselabelframe,width=15,textvariable=id_sku1)
      id_skuentry.delete(0,'end')
      id_skuentry.insert(0, psdata[15])
  
      rebill_amoun = IntVar(expenselabelframe, value='$.00')
      rebill_label=Label(expenselabelframe,text="Rebill amount:")
      rebill_entry = Entry(expenselabelframe,width=15,textvariable=rebill_amoun)
      rebill_entry.delete(0,'end')
      rebill_entry.delete(0,'end')
      rebill_entry.insert(0, psdata[16])

      reb = psdata[13]
      print(ps)
      if reb == '1':
        button51.select()
        id_skulabel.place(x=375,y=160)
        id_skuentry.place(x=420,y=160)
        rebill_label.place(x=335,y=180)
        rebill_entry.place(x=420, y=180)
      else:
        button51.deselect()
  
  
      
      
      def toggle():
        if imge.get():
          browseimg.place(x=40,y=220)
          browsebutton.place(x=350,y=220,height=30,width=50)
          b2.place(x=450, y=240)

        else:
          browseimg.place_forget()
          browsebutton.place_forget()
          b2.place_forget()
        
      imge = BooleanVar()
      Button6 = Checkbutton(expenselabelframe, text = "Attach receipt image(optional,image will be stored   to the database)",command=toggle,variable=imge)
      Button6.place(x=40, y=200)
      browseimg=Label(expenselabelframe,text="(recommended image type:JPG,size 480x320 pixels) ",  bg='#f5f3f2')
      browsebutton=Button(expenselabelframe,text = 'Browse', command=upload_file1)
     
      try:
        image = Image.open("images/"+psdata[11])
        resize_image = image.resize((120, 120))
        recimage = ImageTk.PhotoImage(resize_image)
        b2 = Button(expenselabelframe,image=recimage, height=120, width=120,)
        b2.photo = recimage
        print(image)
      except:
        pass
      
      
      rec = psdata[18]
      print(rec)
      if rec == '1':
        Button6.select()
        browseimg.place(x=40,y=220)
        browsebutton.place(x=350,y=220,height=30,width=50)
        b2.place(x=450, y=240)
      else:
        Button6.deselect()

  
      exptext1=Label(expenselabelframe,text="Notes",pady=5,padx=10)
      exptext1.place(x=12,y=246)
      exptxt = scrolledtext.ScrolledText(expenselabelframe, undo=True,width=50,height=5)
      exptxt.place(x=22,y=280)
      exptxt.delete('1.0','end')
      exptxt.insert('1.0', psdata[12])

      expokButton = Button(window1, text ="Ok",image=tick,width=70,compound = LEFT,command=update_expenses)
      expokButton.place(x=280,y=415)
    except:
        try:
            window1.destroy()
        except: 
            pass
        messagebox.showerror('F-Billing Revolution', 'Select a record to edit.')
    window1.mainloop()

def upload_file1():
   global filename,img, b1
   f_types =[('Png files','*.png'),('Jpg Files', '*.jpg')]
   filename = filedialog.askopenfilename(filetypes=f_types)
   print(filename, 'name')
   #import pdb; pdb.set_trace()
   shutil.copyfile(filename, os.getcwd()+'/images/'+filename.split('/')[-1])
   image = Image.open(filename)
   resize_image = image.resize((120, 120))
   img = ImageTk.PhotoImage(resize_image)
   b1 = Label(expenselabelframe,image=img, height=120, width=120)
   b1.place(x=450, y=240)
      
def file_image(event):
      edit_window = Toplevel()
      edit_window.title("Edit the value or cancel")
      edit_window.geometry("700x500")
      
      
      itemid = exp_tree.item(exp_tree.focus())["values"][0]
      sql = "select * from Expenses where expensesid = %s"
      val = (itemid, )

      fbcursor.execute(sql, val)
      psda = fbcursor.fetchone() 
      image = Image.open("images/"+psda[11])
      resize_image = image.resize((700, 500))
      eximage = ImageTk.PhotoImage(resize_image)
      b2 = Button(edit_window,image=eximage)
      b2.photo = eximage
      b2.pack()
  

######################## DELETE EXPENSE #######################################################################


def delete_expense():
    
    delmess = messagebox.askyesno("Delete Expense", "Are you sure to delete this Expense?")
    if delmess == True:
      itemid = exp_tree.item(exp_tree.focus())["values"][0]
      print(itemid)
      sql = 'DELETE FROM Expenses WHERE expensesid=%s'
      val = (itemid,)
      fbcursor.execute(sql, val)
      fbilldb.commit()
      #selrow = exp_tree.selection()[0]
      exp_tree.delete(exp_tree.selection()[0])
    else:
      pass
  

######################## SEARCH EXPENSE ######################################################################
def close_expenses():
  top.destroy()

def search_exp():
  query = searchvar.get()
  selections = []
  for child in exp_tree.get_children():
      if query in exp_tree.item(child)['values']:
          print(exp_tree.item(child)['values'])
          selections.append(child)
  exp_tree.selection_set(selections)
  
  
  

def search_expense():
    global top,searchvar
    top = Toplevel()  
    
    top.title("Find Text")
    
    
    top.geometry("520x200+390+250")
    findwhat1=Label(top,text="Find What:",pady=5,padx=10)
    findwhat1.place(x=5,y=20)
    searchvar = StringVar() 
    findwhat = ttk.Combobox(top, width = 50, textvariable = searchvar ) 
      
    # Adding combobox drop down list 
    
    findwhat.place(x=80,y=25) 
    

    findButton = Button(top, text ="Find next",width=10, command=search_exp)
    findButton.place(x=420,y=20)

    findin1=Label(top,text="Find in:",pady=5,padx=10)
    findin1.place(x=5,y=47)
    n = StringVar() 
    findIN = ttk.Combobox(top, width = 37, textvariable = n ) 
      
    # Adding combobox drop down list 
    findIN['values'] = ('Client',  
                              ' Date', 
                              ' Category', 
                              ' Vendor', 
                              ' Staff Member', 
                              ' Description', 
                              ' Rebillable',
                              'Invoiced',
                              'Image',
                              'Rebill Amount',
                              'Amount',
                        
                              ' <<All>>') 
      
    findIN.place(x=80,y=54) 
    findIN.current(0)

    closeButton = Button(top, text ="Close",width=10,command=close_expenses)
    closeButton.place(x=420,y=50)

    match1=Label(top,text="Match:",pady=5,padx=10)
    match1.place(x=5,y=74)
    n = StringVar() 
    match = ttk.Combobox(top, width = 27, textvariable = n ) 
      
    # Adding combobox drop down list 
    match['values'] = ('From Any part of the field',' Whole Field',  
                              ' From the beginning of the field')
      
    match.place(x=80,y=83) 
    match.current(0)

    search1=Label(top,text="Search:",pady=5,padx=10)
    search1.place(x=5,y=102)
    n = StringVar() 
    search = ttk.Combobox(top, width = 27, textvariable = n ) 
      
    # Adding combobox drop down list 
    search['values'] = ('All', 'up', 
                              ' Down')
      
    search.place(x=80,y=112) 
    search.current(0)


    checkvarStatus4=IntVar()
   
    Button4 = Checkbutton(top,variable = checkvarStatus4, 
                      text="Match Case", 
                      onvalue =1,
                      offvalue = 0,
                      height=3,
                      width = 15)

    Button4.place(x=60,y=141)

    checkvarStatus5=IntVar()
   
    Button5 = Checkbutton(top,variable = checkvarStatus5, 
                      text="Match Format", 
                      onvalue =0 ,
                      offvalue = 1,
                      height=3,
                      width = 15)

    Button5.place(x=270,y=141)







  

######################## FRONT PAGE OF EXPENSE MODULE #######################################################################

    
expframe = Frame(tab6,relief=GROOVE,bg="#f8f8f2")
expframe.pack(side="top", fill=BOTH)

expmidFrame=Frame(expframe, height=60,bg="#f5f3f2")
expmidFrame.pack(side="top", fill=X)

e = Canvas(expmidFrame, width=1, height=65, bg="#f8f8f2", bd=0)
e.pack(side="left", padx=(5, 2))
e = Canvas(expmidFrame, width=1, height=65, bg="#f8f8f2", bd=0)
e.pack(side="left", padx=(0, 5))

expenseIcon = ImageTk.PhotoImage(Image.open("images/plus.png"))
expenseLabel = Button(expmidFrame,compound="top", text="Create new\nExpense",relief=RAISED, command=add_expense, image=expenseIcon,bg="#f5f3f2", fg="black", height=55, bd=1, width=55,)
expenseLabel.pack(side="left", pady=3, ipadx=4)

expeditIcon = ImageTk.PhotoImage(Image.open("images/edit.png"))
expeditLabel = Button(expmidFrame,compound="top", text="Edit/View\nExpense",relief=RAISED,  image=expeditIcon,command=edit_expense,bg="#f8f8f2", fg="black", height=55, bd=1, width=55)
expeditLabel.pack(side="left")

expdeleteIcon = ImageTk.PhotoImage(Image.open("images/delete.png"))
expdeleteLabel = Button(expmidFrame,compound="top", text="Delete\nSelected", relief=RAISED,  command=delete_expense,image=expdeleteIcon,bg="#f8f8f2", fg="black", height=55, bd=1, width=55)
expdeleteLabel.pack(side="left")

e = Canvas(expmidFrame, width=1, height=65, bg="#b3b3b3", bd=0)
e.pack(side="left", padx=5)

expsearchIcon = ImageTk.PhotoImage(Image.open("images/search-icon.png"))
expsearchLabel = Button(expmidFrame,compound="top", text="Search in\nExpenses",relief=RAISED, command=search_expense, image=expsearchIcon,bg="#f8f8f2", fg="black", height=55, bd=1, width=55, )
expsearchLabel.pack(side="left")


lbframe = LabelFrame(expmidFrame, height=60, width=200)
lbframe.pack(side="left", padx=10, pady=0)

lbl_expdt=Label(lbframe,text="Expense date from:",fg='black')
lbl_expdt.grid(row=0, column=0, pady=5, padx=(5, 0))

lbl_expdtt=Label(lbframe,text="Expense date to:" , fg='black')
lbl_expdtt.grid(row=1, column=0, pady=5, padx=(5, 0))

def daterange_expenses(): # Start and stop dates for range
  var1=expdt1.get_date()
  var2=expdtt2.get_date()
  print(var1,var2)
  for record in exp_tree.get_children():
    exp_tree.delete(record)
  
  sqldate='SELECT * FROM Expenses WHERE date BETWEEN %s AND %s'
  valuz=(var1,var2,)
  fbcursor.execute(sqldate,valuz)
  filterdate=fbcursor.fetchall()
  print(filterdate)
  count=0
  for i in filterdate:
    if True:
      if i[13] == '1':
        e = 'Yes'
      else:
        e = 'No'
      exp_tree.insert(parent='', index='end', iid=i, text='hello', values=(i[0], i[10], i[4], i[6], i[5], i [8], i[7], e , i[14], i[11],i[16],i[3]))
    else:
        pass
  count += 1

  
expdt1=DateEntry(lbframe)
expdt1.grid(row=0, column=1)
   
expdtt2=DateEntry(lbframe)
expdtt2.grid(row=1, column=1)
   
checkvar1 = IntVar()
chkbtn1 = Checkbutton(lbframe, text = "Apply filter", variable = checkvar1, onvalue = 1, offvalue =0,   height = 2, width = 8,command=daterange_expenses)
chkbtn1.grid(row=0, column=2, rowspan=2, padx=(5,5))


e = Canvas(mainFrame, width=1, height=55, bg="#b3b3b3", bd=0)
e.pack(side="left", padx=5)

def refresh_expenses():
  for record in exp_tree.get_children():
    exp_tree.delete(record)
  count=0
  fbcursor.execute('SELECT * FROM Expenses;')
  for i in fbcursor:
    if True:
      if i[13] == '1':
        e = 'Yes'
      else:
        e = 'No'
      exp_tree.insert(parent='', index='end', iid=i, text='hello', values=(i[0], i[10], i[4], i[6], i[5], i[8], i[7], e , i[14], i[11],i[16],i[3]))
    else:
        pass
  count += 1
  

exprefreshIcon = ImageTk.PhotoImage(Image.open("images/refresh.png"))
exprefreshLabel = Button(expmidFrame,compound="top", text="Refresh\nExpense List",relief=RAISED,  image=exprefreshIcon,bg="#f8f8f2", fg="black", height=55, bd=1, width=63,command=refresh_expenses)
exprefreshLabel.pack(side="left")



invoi1label = Label(expframe, text="Expenses (All)", font=("arial", 18), bg="#f8f8f2")
invoi1label.pack(side="left", padx=(20,0))

def fil(event):
  filt = drop123.get()
  for record in exp_tree.get_children():
    exp_tree.delete(record)
  
  
  
  
  sql = "select * from Expenses where catagory = %s"
  val = (filt,)
  fbcursor.execute(sql, val)
  records = fbcursor.fetchall()
  
  
  count=0
  for i in records:
      if True:
        if i[13] == '1':
           e = 'Yes'
        else:
          e = 'No'
        exp_tree.insert(parent='', index='end', iid=i, text='hello', values=(i[0], i[10], i[4], i[6], i[5], i[8], i[7], e , i[14], i[11],i[16],i[3]))
      else:
        pass
  count += 1

sql = "SELECT DISTINCT catagory FROM Expenses"
fbcursor.execute(sql,)
rec = fbcursor.fetchall()
drop123 = ttk.Combobox(expframe,)
drop123['values'] = rec
drop123.pack(side="right", padx=(0,10))
drop123.bind("<<ComboboxSelected>>", fil)


 
invoi1label = Label(expframe, text="Category filter", font=("arial", 15), bg="#f8f8f2")
invoi1label.pack(side="right", padx=(0,10))

# sql= 'SELECT rebillable FROM Expenses '
# fbcursor.execute(sql,)
# c = fbcursor.fetchall()
# print (c[2])
# print(c == 1)
# for e in c:
#   m = e == c
#   m = ("Yes")
#   e != c
#   print("no")
#   else:
#     pass



#table 
s = ttk.Style()
s.configure('Treeview.Heading', background='white', State='DISABLE')


exp_tree=ttk.Treeview(tab6,selectmode='browse')
exp_tree.place(x=0,y=105,height=580)

expverticalbar=ttk.Scrollbar(tab6,orient="vertical",command=exp_tree.yview,)
expverticalbar.place(x=1345,y=102,height=570,)
expverticalbar.place(x=1345,y=102,height=570)
exp_tree["columns"]=("1","2","3","4","5","6","7","8","9","10","11","12")
exp_tree["show"]='headings'
exp_tree.column("1",width=5,anchor='c')
exp_tree.column("2",width=130,anchor='c')
exp_tree.column("3",width=110,anchor='c')
exp_tree.column("4",width=120,anchor='c')
exp_tree.column("5",width=120,anchor='c')
exp_tree.column("6",width=120,anchor='c')
exp_tree.column("7",width=220,anchor='c')
exp_tree.column("8",width=120,anchor='c')
exp_tree.column("9",width=100,anchor='c')
exp_tree.column("10",width=100,anchor='c')
exp_tree.column("11",width=100,anchor='c')
exp_tree.column("12",width=100,anchor='c')
exp_tree.heading("2",text="Client")
exp_tree.heading("3",text="Date")
exp_tree.heading("4",text="Category")
exp_tree.heading("5",text="Vendor")
exp_tree.heading("6",text="Staff member")
exp_tree.heading("7",text="Description")
exp_tree.heading("8",text="Rebillable")
exp_tree.heading("9",text="Invoiced")
exp_tree.heading("10",text="Image")
exp_tree.heading("11",text="Rebill Amount")
exp_tree.heading("12",text="Amount")
exp_tree.bind('<Double-Button-1>' , file_image)





fbcursor.execute('SELECT * FROM Expenses;')

j = 0

for i in fbcursor:
  if i[13] == '1':
    e = 'Yes'
  else:
    e = 'No'
  exp_tree.insert(parent='', index='end', iid=i, text='hello', values=(i[0], i[10], i[4], i[6], i[5], i[8], i[7], e , i[14], i[11],i[16],i[3]))
  j += 1
  
root.mainloop()