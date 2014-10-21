def primeNumbers(n)
    primes = []
    i = 1

    while primes.size < n do
        prime = (2...i).all? { |j| i % j != 0 }
        primes.push(i) if prime
        i += 1
    end

    return primes
end