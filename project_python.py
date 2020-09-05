from tkinter import *
from tkinter import ttk
from tkinter import messagebox
from tkinter.ttk import *
from tkinter import Tk, mainloop, LEFT, TOP, Canvas
import pymysql
from fpdf import FPDF



def main():

    window = Tk() 
    window.title("Railway Ticket Booking ")
    window.geometry('500x500')

    tab_control = ttk.Notebook(window)

    tab1 = ttk.Frame(tab_control)

    def get_class():
        w = int(var.get())
        if w == 1 :
            data = "First"
        if w == 2 :
            data = "Second"
        return data

    def get_count():
        data = count.get()
        return int(data)

    def get_source():
        data = stxt.get()
        return data

    def get_des():
        data = dtxt.get()
        return data

    def get_date():
        data = combo1.get()
        return data

    def get_month():
        data = combo2.get()
        return data

    def get_year():
        data = combo3.get()
        return data

    def fetch_rate():
        cl=get_class()
        s=get_source()
        d=get_des()
        db=pymysql.connect("localhost","root","","railway")
        print("Successfully connected")
        cursor=db.cursor()
        if cl=='First':
            sql="SELECT Rate1 FROM central WHERE Source='%s' AND Destination='%s'"%(s,d)
            cursor.execute(sql)
            result=cursor.fetchall()
            for x in result:
                rate=x[0]
                print("Rate=%d"%(rate))
        else:
            sql="SELECT Rate2 FROM central WHERE Source='%s' AND Destination='%s'"%(s,d)
            cursor.execute(sql)
            result=cursor.fetchall()
            for x in result:
                rate=x[0]
                print("Rate=%d"%(rate))
        return rate
        db.close()
    def get_rate():
        r=fetch_rate()
        count=get_count()
        if (count==1):
            return r
        else:
            r=r*count
            return (r)
        
    def click1():
        c=get_count()
        s=get_source()
        d=get_des()
        date=get_date()
        cl=get_class()
        m=get_month() 
        y=get_year()
        r=get_rate()
        print(s)
        print(d)
        print(cl)
        print(date)
        print(m)
        print(y)
        print(c)
        print(r)
        tab3 = ttk.Frame(tab_control)
        tab_control.add(tab3, text='Details')
        btn3 = Button(tab3, text="Book", command=click2)
        btn3.place(x=150 ,y=150)
        lbl = Label(tab3, text="Bookie's details", font=20)
        lbl.place(x=80, y=10)
        lbl = Label(tab3, text="Name", font=20)
        lbl.place(x=60, y=40)
        ntxt = Entry(tab3,width=20, font=15)
        ntxt.place(x=150, y=40)
        lbl = Label(tab3, text="Email", font=20)
        lbl.place(x=60, y=70)
        etxt = Entry(tab3,width=20, font=15)
        etxt.place(x=150, y=70)
        lbl = Label(tab3, text="Phone no", font=20)
        lbl.place(x=60, y=110)
        ptxt = Entry(tab3,width=20, font=15)
        ptxt.place(x=150, y=110)
             
    def click2():
        c=get_count()
        s=get_source()
        d=get_des()
        date=get_date()
        cl=get_class()
        m=get_month() 
        y=get_year()
        r=get_rate()
        tab4 = ttk.Frame(tab_control)
        tab_control.add(tab4, text='Ticket')
        w = Canvas(tab4, width=500, height=500)
        w.pack()
        w.create_rectangle(20, 20, 480, 200, fill="yellow")
        w.create_text(240,30, text="CENTRAL RAILWAY TICKET",font="bold")
        w.create_text(58,60, text="SOURCE:")
        w.create_text(72,80, text="DESTINATION:")
        w.create_text(52,100, text="CLASS:")
        w.create_text(50,120, text="DATE:")
        w.create_text(90,140, text="TOTAL PASSENGERS:")
        w.create_text(50,160, text="FARE:")
        w.create_text(200,60, text=s)
        w.create_text(200,80, text=d)
        w.create_text(200,100, text=cl)
        w.create_text(200,120, text=date+" "+m+" "+y)
        w.create_text(200,140, text=c)
        w.create_text(200,160, text=r)
        btn4 = Button(tab4, text="Print", command=click3)
        btn4.place(x=133,y=220)
        btn5 = Button(tab4, text="Generate PDF", command=click4)
        btn5.place(x=266,y=220)
        #btn4.grid(column=0,row=0)

    def click4():
        c=get_count()
        s=get_source()
        d=get_des()
        date=get_date()
        cl=get_class()
        m=get_month() 
        y=get_year()
        r=get_rate()
        pdf = FPDF()
        pdf.add_page()
        pdf.set_font("Arial", size=12)
        pdf.cell(200, 10, txt="Source:"+s, ln=1, align="L")
        pdf.cell(200, 10, txt="Destination:"+d, ln=1, align="L")
        pdf.cell(200, 10, txt="Class:"+cl, ln=1, align="L")
        pdf.cell(200, 10, txt="Rate:"+str(r), ln=1, align="L")
        pdf.cell(200, 10, txt="Date:"+str(date)+m+str(y), ln=1, align="L")
        
        pdf.output("E-Ticket_"+s+".pdf")
        messagebox.showinfo('RAILWAY BOOKING', 'Your Booking was sucessful & the pdf is saved.')

    def click3():
           
                messagebox.showinfo('RAILWAY BOOKING', 'Your Booking was sucessful')


    tab_control.add(tab1, text='Search')
    btn1 = Button(tab1, text="Proceed", command=click1)
    btn1.place(x=150,y=240)

    lbl = Label(tab1, text="Source", font=20)
    lbl.place(x=60,y=10)
    stxt = Combobox(tab1)
    stxt['values']= ('CST','Masjid','Byculla','Parel','Dadar','Matunga','Sion','Kurla','Vidyavihar','Ghatkopar','Vikhroli','Bhandup','Mulund','Thane','Kopar','Dombivli','Kalyan','Ulhasnagar','Ambernath','Badlapur','Karjat','Khopoli','Titwala','Asangaon','Kasara')
    stxt.current(0)
    stxt.place(x=150,y=10)

    lbl = Label(tab1, text="Destination", font=20)
    lbl.place(x=60,y=40)
    dtxt = Combobox(tab1)
    dtxt['values']= ('CST','Masjid','Byculla','Parel','Dadar','Matunga','Sion','Kurla','Vidyavihar','Ghatkopar','Vikhroli','Bhandup','Mulund','Thane','Kopar','Dombivli','Kalyan','Ulhasnagar','Ambernath','Badlapur','Karjat','Khopoli','Titwala','Asangaon','Kasara')
    dtxt.current(24)
    dtxt.place(x=150,y=40)

    lbl = Label(tab1, text="Class", font=20)
    lbl.place(x=60,y=70)
    var = IntVar()
    rad1 = Radiobutton(tab1,text='First',variable = var ,value=1)
    rad2 = Radiobutton(tab1,text='Second',variable = var ,value=2)
    rad1.place(x=150,y=70)
    rad2.place(x=200,y=70)
        

    lbl = Label(tab1, text="Date", font=20)
    lbl.place(x=60,y=100)
    combo1 = Combobox(tab1)
    combo1['values']= (1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31)
    combo1.current(0)
    combo1.place(x=150,y=100)

    lbl = Label(tab1, text="Month", font=20)
    lbl.place(x=60,y=130)
    combo2 = Combobox(tab1)
    combo2['values']= ("JAN","FEB","MAR","APR","MAY","JUN","JUL","AUG","SEPT","OCT","NOV","DEC")
    combo2.current(0)
    combo2.place(x=150,y=130)

    lbl = Label(tab1, text="Year", font=20)
    lbl.place(x=60,y=160)
    combo3 = Combobox(tab1)
    combo3['values']= (2019, 2020, 2021)
    combo3.current(0)
    combo3.place(x=150,y=160)

    lbl = Label(tab1, text="Passengers count", font=20)
    lbl.place(x=60,y=190)
    count = Entry(tab1,width=10, font=15)
    count.place(x=195,y=190)

    tab_control.pack(expand=1, fill='both')

    window.mainloop()



if __name__ == '__main__':
    main()  
