def binary(list1,item):
    list2=sorted(list1)
    n=len(list2)
    beg=0
    end=n-1
    while beg<=end:
        mid=int((beg+end)/2)
        if list2[mid]==item:
            print("item is present at",mid)
            break
        elif list2[mid]<item:
            beg=mid+1     
        else:
            end=mid-1
    else:
        print("item not found")
list1=[2,1,3,7,5,8,23,1,2,3,5,112]
item=7
binary(list1,item)
            
