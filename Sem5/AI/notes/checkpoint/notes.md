# Fuzzy

## Fuzzy and Crisp

- Crisp Set 
  - Has only 0 and 1 values
  - clear boundary

- Fuzzy Set
  - Has values b/w 0 and 1
  - not clear boundary


## Membership Function
- Tells about the degree of belonging in the fuzzy set

## Operation and Properites
### Operations and Properties of a classical set

- Operation on a classical set
  - Union
  - Intersection
  - Compliment
  - Set Difference
  
- Properties of a classical Set
  - Commutavity
  - Associativity
  - Distrubitivity
  - Idempotency
  - Cardinality
    - It is the number of elements in a set nx

### Operations and Properties of Fuzzy Set

- Operation on Fuzzy Set
   - Compliment
      - 1 - (element value)
   - Union
      - max of both the values
   - Intersection
      - min of both the values

## Fuzzy Relations

- In real life the relations can be represented by fuzzy values
- Fuzzy Relation are one kind of fuzzy set
   - Therefore you can apply operation on those fuzzy relation
   - Union
   - Intersection
   - Complement
   - Containment (FLAG101)

- Extra Properties ( Other than Fuzzy Sets )
   - Sum
     - A + B = Max[aij,bij]
   - Max Product
     - A.B = AB = Max[Min(aik,bjk)]
   - Scalar Product
     - lambda * a

### To form relation from two fuzzy sets
- Cartesian Product
   - Multiply the two sets and min of the values in the set
   - P[x][y] = min(u_a(x),u_b(x))

### Composition of fuzzy relations

- Max Min Composition
  - ![maxminsol](/home/manan/Desktop/notes/Sept/14sept/maxmin_sol.jpg)
- Max Product Composition
  - Instead of finding the min of the values , we will multiply them

### Properties of Relation Matrices
- Reflexitivity
  - xr(xi,xi) = 1
- Symmetry
  - xr(yi,xi) = xr(xi,yi)
- Transitivity (Crisp)
  - xr(xi,xj) and xr(xj,xk) = 1 -> xr(xi,xk) = 1
- Transitivity (Fuzzy)
  - x2,x5 >= min((x2,x1) and (x1,x5))

### Types of fuzzy Relations

- Equivalence
  - All three relations will hold
- Tolerance
  - Reflexivity
  - Symmetry

## Similarity Methods in Matrices
- Cosine Methods
   - rij = $/sum{k=1}{m} x_ik x_jk$
   - $(/sum{k=1}{m}(x_ik)^2 /sum{k=1}{m}(x_ik)^2)^(1/2)$
- Max-Min Methods
   - $/sum{k=1}{m} min(x_ik,x_jk)$
   - $/sum{k=1}{m} max(x_ik,x_jk)$
      - where i,j = 1,2 ......,n

## Convex Fuzzy Set
- Whose values are strictly monotically increasing or monotically descreasing

## Arithemetic Operation
### Fuzzy Sets
- Addition
- Subtraction
- Multiplication
- Division
### Cont Fuzzy Sets

## Defuzzification
- Methods
  - Max Membersip Function
     - Simply Replace the set with the max value
  - Centroid Average Method
     - Integral uc(x).x.dx/Intergral uc(x).dx
  - Weighted Average Method
