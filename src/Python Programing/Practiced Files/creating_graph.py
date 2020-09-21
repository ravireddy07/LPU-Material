n=int(input("enter no. of vertices" ))
nodes=[]
edges={}
print("Enter vertices: ")
for i in range(n):
    nodes.append(input("Enter %d vertex: "%i))
    edges[nodes[i]]=[]
print("Enter edges: ")
while True:
    choice=int(input("enter 1 to add edge and 0 to break: "))
    if choice==0:
        break
    else:
        src=input("Enter source vertex: ")
        dest=input("Enter destination vertex: ")
        if not(src in nodes or dest in nodes):
            raise ValueError("Node not in graph")
        else:
            edges[src].append(dest)
print("Graph is: ")
for i in nodes:
    for j in edges[i]:
        print(i+" --> " +j)
