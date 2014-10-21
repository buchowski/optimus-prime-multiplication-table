load 'multiplication.rb'

describe "#primeNumbers" do
    it "returns [] when n == 0" do
        primes = primeNumbers(0)
        primes.should eq([])
    end
end