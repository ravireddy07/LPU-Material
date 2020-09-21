graph={ 'A':['C','B'],
        'B':['E','D'],
        'C':['G','F'],
        'D':[],
        'E':[],'F':[],'G':[]}

def dfs(graph,s):
    visited=[]
    stack=[s]
    while stack:
        node=stack.pop()
        if node not in visited:
            visited.append(node)
            stack=stack+graph[node]
    return visited

print(graph)
print(dfs(graph,'A'))

