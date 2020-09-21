def partition(lst,low,high):
    i = ( low-1 )         
    pivot = lst[high]     
    for j in range(low , high):
        if   lst[j] <= pivot:
            i = i+1
            lst[i],lst[j] = lst[j],lst[i]
 
    lst[i+1],lst[high] = lst[high],lst[i+1]
    return ( i+1 ) 
def quickSort(lst,low,high):
    if low < high:
        pi = partition(lst,low,high)
        quickSort(lst, low, pi-1)
        quickSort(lst, pi+1, high)
a=[2,7,9,1,8]
n = len(a)
quickSort(a,0,n-1)
print ("Sorted lstay is:",a)

