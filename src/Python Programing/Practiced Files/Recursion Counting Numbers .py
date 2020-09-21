def main():
    count(5)
def count(n):
    if(n==0):
        print("ok")
    else:
        count(n-1)
        print(n)
main()
