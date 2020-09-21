filename = input("Enter the file name to be open: ");

outF = open(filename, "w+")

line = input("Enter the Text to append into the File: \n");

outF.write(line)
outF.write("\n")

outF.close()

outF = open(filename, "r")
print(outF.read());
outF.close()
