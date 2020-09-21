def main():
   print(dbinary(7))
def dbinary(num):
    b=1
    rem=0
    bin=0
    while(num>0):
        rem=num%2
        bin+=rem*b
        b*=10
        num//=2  ''' Binary,Octal,Hexa,Decimal Conversion'''
    return bin
main()
