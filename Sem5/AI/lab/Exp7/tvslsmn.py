from sys import maxsize 
from itertools import permutations
V = 4
paths = []
min_cost = 1000

# implementation of traveling Salesman Problem 
def travellingSalesmanProblem(graph, s): 
 
    # store all vertex apart from source vertex 
    vertex = [] 
    for i in range(V): 
        if i != s: 
            vertex.append(i) 
 
    # store minimum weight Hamiltonian Cycle 
    min_path = maxsize 
    next_permutation=permutations(vertex)
    for i in next_permutation:
 
        # store current Path weight(cost) 
        current_pathweight = 0
 
        # compute current path weight 
        k = s 
        for j in i: 
            current_pathweight += graph[k][j] 
            k = j 
        current_pathweight += graph[k][s] 
 
        # update minimum 
        min_path = min(min_path, current_pathweight) 
         
    return min_path 

min_cost = 1000
def dfs(node, graph, visited, cost):
 global min_cost
 global paths
 if len(visited) == 4: #all 4 vertices visited
  if cost < min_cost :
       #print(visited,":",cost)
       paths = list(visited)
       min_cost = cost
  return 
 for i in range(4):
     if i not in visited:
        visited.append(i)
        cost = cost + graph[node][i]
        dfs(i, graph, visited, cost)
        cost = cost - graph[node][i]
        visited.pop(len(visited)-1)

# Driver Code 
def main(): 
    # matrix representation of graph 
    global paths
    graph = [[0, 10, 15, 20], [10, 0, 35, 25], 
            [15, 35, 0, 30], [20, 25, 30, 0]] 
    s = 0
    print(travellingSalesmanProblem(graph, s))
    visited = []
    dfs(0,graph, visited, 0)
    print("Min path is:",paths,"And the cost is:",min_cost)

main()
