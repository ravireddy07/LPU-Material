
'''
import mmap

f = open('stringLibrary.txt','r')
s = mmap.mmap(f.fileno(), 0, access=mmap.ACCESS_READ)
if s.find('M') and len(s)>0 and len(s)<5:
    print('true')

'''
file = open("stringLibrary.txt",'w');

line1 = input("First, Enter the String into the File: \n");
file.write(line1);
file.close();


def check():
        datafile = open('stringLibrary.txt','r')
        found = False
        for line in datafile:
            if line.startswith('M') and len(line) <= 5:
                found = True
                print(len(line));
                break

        return found

found = check()
if found:
    print("true")
else:
    print("false")
