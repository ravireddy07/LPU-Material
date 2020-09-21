'''def tag_count(input_list,c):{
     for i in input_list :
        if (i.startswith("<") and i.endswith(">")):
            c += 1
    return count

}
# Test for the tag_count function:
count=0
list1 = ['<greeting>', 'Hello World!', '</greeting>']
count = tag_count(list1,count)
print("Expected result: 2, Actual result: {}".format(count))
# Test for the tag_count function:
list1 = ['<greeting>', 'Hello World!', '</greeting>']
count = tag_count(list1)
print("Expected result: 2, Actual result: {}".format(count))
'''

def fun(list1):
    count = 0
    for i in list1:
        if(i.startswith("<") and i.endswith(">")):
            count +=1
    #print(count);
    return count

list11 = ["<greeting>","Hello world!","</greetings>"]
final = fun(list11);
print("Expected result: 2, Actual result: {}".format(final))
