import timeit
list_a= timeit.timeit(stmt="[1,2,3,4,5,6,7]",number=10000000);

tup_a= timeit.timeit(stmt="[1,2,3,4,5,6,7]",number=10000000);

#stmt(Statement) & number is Fixed keyword's in timeit 
print("List Time is: ", list_a);
print("Tuple time is: ", tup_a);
