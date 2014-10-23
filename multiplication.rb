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

def products(n)
    primes = primeNumbers(n)
    products = []

    primes.each_with_index do |j, i|
        primes[i..-1].each do |k|
            products.push(j * k)
        end
    end

    return products
end

def buildTable(products, n)
    count = 0
    size = products.size

    products.each_with_index do |j, i|
        if Math.sqrt(j) % 1 == 0
            count++
            k = i + n - count
            print products[i...k]
            
        end
    end
end

def printTable(table)
    table.each do |row|
        $stdout.puts row.join("\t")
    end
end

puts "How many primes would you like?"
n = gets.to_i
# printTable(multiplicationTable(primes))
buildTable(products(n), n)

