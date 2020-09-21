a={'a':100,'b':200,'a':200,'b':100,'3':300};

from collections import defaultdict
temp_ids = []
dup_dict = defaultdict(list)
for number, row  in enumerate(a):
    id = row['un']
    if id not in temp_ids:
        temp_ids.append(id)
    else:
        tally[id].append(number)

print(a);
