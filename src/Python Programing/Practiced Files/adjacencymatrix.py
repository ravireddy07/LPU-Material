#edgelist_to_adjmatrix.py
 
def printMatrix(matrix):
    for i in range(len(matrix)):
        for k in range(len(matrix[0])):
            print(matrix[i][k], " ", end='')
        print('')
 
#----------------------------------------------------------------
 
def main():
     
    edge_u = [0, 0, 0, 1, 1, 1, 1, 2, 2, 3, 3, 3, 3, 4, 4, 4]
    edge_v = [1, 3, 4, 0, 2, 3, 4, 1, 3, 0, 1, 2, 4, 0, 1, 3]
 
 
    # our graph has n=5 nodes
    n = 5
 
 
    # adjacency matrix - initialize with 0
    # see also: http://stackoverflow.com/questions/6667201/how-to-define-two-dimensional-array-in-python
    adjMatrix = [[0 for i in range(n)] for k in range(n)]
 
     
    # scan the arrays edge_u and edge_v
    for i in range(len(edge_u)):
        u = edge_u[i]
        v = edge_v[i]
        adjMatrix[u][v] = 1
 
 
    # check matrix
    print("Adjacency matrix: ")
    printMatrix(adjMatrix)
 
#------------------------------------------------------------------
 
main()
