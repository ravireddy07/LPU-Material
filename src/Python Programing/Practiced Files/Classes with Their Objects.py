class student:
    def __init__(self,p,c):
        self.__name=input('Enter the Name of the Student :'); #__name is a Private Attribute
        # You can Take many input from the User
        self.prof=p;
        self.colle=c                                           #Public
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
        #adding all marks 
        self.percentage=self.total_marks/4;
        print('\n')
        print(self.__name)    #Can be accessable in class
        print(self.prof)
        print(self.colle)
        #this will give the details of std1, Because this function is called
        #                      through std1 object..,
        
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

#print(std1.__name)          # Cannot be accessable outside Class of Private Data Member
#print(std2.__name)



#Class Accessing Attributes:-

#It returns the values
print(getattr(std1,'__name'));
print(getattr(std2,'__name'));

#It returns the True if the Attribute is their or false
print(hasattr(std1,'__name'));
print(hasattr(std2,'__name'));

#it create new attribute, if it is not Present in the class Attributes
print(setattr(std1,'age','18'));
print(setattr(std1,'city','HYD'))


#it deletes the Menctioned Attributes
delattr(std1,'age')
delattr(std2,'age')

#above age attribute is deleted & now it resetted again
print(setattr(std1,'age','18'));
print(setattr(std2,'age','19'));



#Class Built-in Function/Attributes


print(student.__doc__)  #Class Documentation
print(student.__name__) #Class Name
print(student.__module__)# Module Name in Which class id defined
print(student.__bases__) #Base Classes
print(student.__dict__)  #Dictionary Containing Class NameSpace
