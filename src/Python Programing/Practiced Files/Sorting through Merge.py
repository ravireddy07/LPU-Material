def merge(A,B): #Mergeing A[0:m],B[0:n]
    (m,n)=(len(A),len(B))#i,j are Current Positions in A,B
    (i,j)=(0,0)
    C=[];
    
    while(i+j<=m+n):       #i+j is Number of elements merged so far
        if i == m:          #Case 1 is Empty
            C.append(B[j])
            j=j+1
        elif j == n:       #case 2: B is Empty
            C.append(A[i])
            i=i+1
        elif A[i] <= B[j]: #Case 3: Head of A is Smaller
            C.append(A[i])
            i=i+1
        elif A[i] > B[j]:  #Case 4: Head of B is Smaller
            C.append(B[j])
            j=j+1
    return(C);

a=[1,3,5,7,9];
b=[2,4,6,8,10];

merge(a,b)
    
