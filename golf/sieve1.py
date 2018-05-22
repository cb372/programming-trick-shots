# Sieve of Eratosthenes.
# Prints all the prime numbers between 1 to n.
def eratosthenes(n):
    multiples = set()
    for i in range(2, n+1):
        if i not in multiples:
            print (i)
            for j in range(i*i, n+1, i):
                multiples.add(j)

eratosthenes(1000)
