

"""We can Create a Tuple by this followed way also, But, If it is a single a
element then, it should be end with a Comma(,) & Remaining are Not required."""


"""
test1=1
test2=1,
test3=1,2
test4=1,2,3,


print(test1);
print(test2);
print(test3);
print(test4);


print(type(test1));
print(type(test2));
print(type(test3));
print(type(test4));

"""

survey1=("Ravi", 7, "Cricket");
survey2=("Ravi Reddy", 77, "Cricket Lover");

name=survey1[0];
lucky=survey1[1]
goal=survey1[2]


name1,lucky1,goal1=survey2;

print("Name is ", name);
print("lucky Number is : ", lucky);
print("Goal is : ", goal);

print(end="\n");

print("Name is ", name1);

print("lucky Number is : ", lucky1);

print("Goal is : ", goal1);
