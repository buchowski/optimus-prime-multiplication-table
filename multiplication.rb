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

def multiplicationTable(n)
    primes = primeNumbers(n)
    table = []

    primes.each do |i|
        row = []
        primes.each do |j|
            row.push(i * j)
        end
        table.push(row)
    end

    return table
end

def printTable(table)
    table.each do |row|
        $stdout.puts row.to_s
    end
end

printTable(multiplicationTable(10))

