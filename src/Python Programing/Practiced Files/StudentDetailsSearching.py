def personal_details():
    temp = open("StudentRecords.txt",'r');
    found = False
    input1 = input("Enter name & DOB to Search");
    for line in temp:
            if input1 in line :
                found = True
                break

    return found
    


file = open("StudentRecords.txt",'w');

student1 = input("Enter name & DOB of Student without Space");

student2 = input("Enter name & DOB of Student without Space");

file.write(student1+"\n");
file.write(student2);

file.close();


found = personal_details();
if found:
    print("true")
else:
    print("false")
