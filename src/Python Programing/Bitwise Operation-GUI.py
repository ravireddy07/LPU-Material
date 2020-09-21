from tkinter import *
import tkinter 

top=tkinter.Tk()
res = 0
tfprs = ""
def and1(a,b):
    global res
    res = int(a and b)
def or1(a,b):
    global res
    res  = int(a or b)
def not1(a):
    global res
    res = int(not a)
def xor1(a,b):
    global res
    res = int((a and not b) or (not a and b))
def result():
    global top,res,E3
    text = IntVar()
    E3=Entry(top,textvariable=text,bd=5)
    E3.grid(row=4,column=1)
    '''E3.config(text=res)'''
    text.set(str(res))
def exit1(top):
    top.destroy()
def exit2(top):
    top.destroy()
def selected():
    global tfprs
    tfprs = var.get()
def expl(a,b):
    global top,tfprs,res
    binary1 = StringVar()
    binary2 = StringVar()
    top1=tkinter.Toplevel(top)
    value1 = IntVar()
    l1=Label(top1,text="Number 1").grid(row=0,column=0)
    e1=Entry(top1,textvariable = value1,bd=5)
    value1.set(a)
    e1.grid(row=0,column=1)
    e3=Entry(top1,textvariable = binary1,bd=5)
    l3=Label(top1,text="Binary Number 1").grid(row=0,column=2)
    binary1.set(format(a,'b'))
    e3.grid(row=0,column=3)
    value2 = IntVar()
    l2=Label(top1,text="Number 2").grid(row=1,column=0)
    e2=Entry(top1,textvariable = value2,bd=5)
    value2.set(b)
    e2.grid(row=1,column=1)
    l4=Label(top1,text="Binary Number 2").grid(row=1,column=2)
    e4=Entry(top1,textvariable = binary2,bd=5)
    binary2.set(format(b,'b'))
    e4.grid(row=1,column=3)
    l5=Label(top1,text="t.f.p.r.s").grid(row=2,column=2) #says text from previous radiobutton selection
    operator = StringVar()
    e5=Entry(top1,textvariable = operator,bd=5)
    operator.set(tfprs)
    operator.set(tfprs)
    e5.grid(row=2,column=3)
    dres = IntVar()
    l6=Label(top1,text="Decimal Result").grid(row=3,column=1)
    e6=Entry(top1,textvariable = dres ,bd=5)
    dres.set(res)
    e6.grid(row=3,column=2)
    b1=tkinter.Button(top1,bd=5,text="Exit",command=lambda top=top1:exit2(top1)).grid(row=4,column=0)
    top.mainloop()
def dotwo(a,b):
    selected()
    expl(a,b)

num1 = IntVar()
L1=Label(top,text="Number 1").grid(row=0,column=0)
E1=Entry(top,textvariable = num1,bd=5)
num1.set("")
E1.grid(row=0,column=1)
num2 = IntVar()
L2=Label(top,text="Number 2").grid(row=0,column=2)
E2=Entry(top,textvariable =num2,bd=5)
num2.set("")
E2.grid(row=0,column=3)
var=StringVar()


R1=Radiobutton(top,text="AND",variable=var,value=1,command="and1",tristatevalue=0)
R1.grid(row=1,column=0)
R2=Radiobutton(top,text="OR",variable=var,value=2,command="or1",tristatevalue=0)
R2.grid(row=1,column=1)
R3=Radiobutton(top,text="NOT",variable=var,value=3,command="not1",tristatevalue=0)
R3.grid(row=2,column=0)
R4=Radiobutton(top,text="XOR",variable=var,value=4,command="xor1",tristatevalue=0)
R4.grid(row=2,column=1)
label=Label(top)
label.grid()

B1=tkinter.Button(top,text="Result is:",command=result,width=10, height=-10, fg="black",
    font=("Times",-15,'bold'),bd=5)
B1.grid(row=3,column=0)
B2=tkinter.Button(top,text="Explanation",width=10, height=-10, fg="black",
    font=("Times",-15,'bold'),command=lambda:dotwo(int(E1.get()),int(E2.get())),bd=5)
B2.grid(row=3,column=1)
B3=tkinter.Button(top,bd=5,text="Exit",width=10, height=-10, fg="black",
    font=("Times",-15,'bold'),command=lambda top=top:exit1(top)).grid(row=3,column=2)
L3=Label(top,text="Result is:").grid(row=4,column=0)
E3=Entry(top,bd=5)
E3.grid(row=4,column=1)
top.mainloop()
