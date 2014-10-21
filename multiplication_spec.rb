load 'multiplication.rb'

describe "#primeNumbers" do
    it "returns [] when n == 0" do
        expect(primeNumbers(0)).to eq([])
    end
    it "returns [1] when n == 1" do
        expect(primeNumbers(1)).to eq([1])
    end
    it "returns [1, 2, 3] when n == 3" do
        expect(primeNumbers(3)).to eq([1, 2, 3])
    end
    it "returns [1, 2, 3, 5, 7, 11, 13, 17, 19, 23] when n == 10" do
        expect(primeNumbers(10)).to eq([1, 2, 3, 5, 7, 11, 13, 17, 19, 23])
    end
    it "returns only one even number (2) if n >= 2" do 
        primes = primeNumbers(24)
        evenPrimes = primes.select { |i| i.even? }
        expect(evenPrimes).to eq([2])
    end
    it "does not include numbers that aren't prime" do
        primes = primeNumbers(14)
        expect(primeNumbers(14)).not_to include(4, 6, 21, 44, 99, 112)
    end
end