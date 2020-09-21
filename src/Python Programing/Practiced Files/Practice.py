'''class student:
    def __init__(self,p,c):
        self.__name=input('Enter the Name of the Student :');
        self.prof=p;
        self.colle=c
        self.age=input('Enter the age of the student: ');
        self.total_marks=0
        self.percentage=0
        self.dbms=55
        self.cod=50
        self.software=50
        self.python=60
        self.dsa=60;
        
    def summ(self):
        self.total_marks=self.python+self.software+self.cod+self.dbms;
        self.percentage=self.total_marks/4;
        print('\n')
        print(self.__name)
        print(self.prof)
        print(self.colle)
        print('total_marks = ')
        print(self.total_marks)
        print('Pencentage = ')
        print(self.percentage)
        
    def summ1(self):
        self.total_marks=self.python+self.dsa+self.software+self.cod+self.dbms;
        self.percentage=self.total_marks/5;
        print('\n')
        print(self.__name)
        print(self.prof)
        print(self.colle)
        print('total_marks = ')
        print(self.total_marks)
        print('Pencentage = ')
        print(self.percentage)


std1=student('Programmer','LPU');
std1.summ();
print('\n')

std2=student('Hacker','LPU');
std2.summ1();

print(std1._student__name)


print(student.__doc__)
print(student.__name__)
print(student.__module__)
print(student.__bases__)
print(student.__dict__)
'''

dict1={}
dict11={1:'Ravi', 2:'Reddy',3:'RAvi Reddy','Gojur':1}
for i in dict11:
    dict11[i] = dict11.get(i,0) + 1
    print(dict1)
