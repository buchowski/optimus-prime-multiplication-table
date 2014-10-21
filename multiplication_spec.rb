load 'multiplication.rb'
load 'spec_helper.rb'

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

describe "spec_helper function" do
    it "#tableMax returns 45 when max cell value is 45" do
        expect(tableMax([[1, 30, 22], [44, 45, 0], [-4, 11, 40]])).to eq(45)
    end
    it "#tableMin returns 1230 when min cell value is 1230" do
        expect(tableMin([[1967, 3000, 100000], [9888, 1230, 1231], [4000, 1800, 1230]])).to eq(1230)
    end
end

describe "#multiplicationTable" do
    context "returns table with" do
        it "no rows or cols when there are no primes (n == 0)" do
            expect(multiplicationTable(0)).to eq([])
        end
        it "2 rows when n = 1" do
            expect(multiplicationTable(1).size).to eq(2)
        end
        it "3 cols when n = 3" do
            expect(multiplicationTable(3).first.size).to eq(3)
        end
        it "11 rows when n = 10" do 
            expect(multiplicationTable(10).size).to eq(11)
        end
        it "10 cols when n = 10" do 
            expect(multiplicationTable(10).first.size).to eq(10)
        end
    end
    context "returns max value of" do
        it "1 when n == 1" do 
            expect(tableMax(multiplicationTable(1))).to eq(1)
        end
    end
end