Prime Number Multiplication Table
=================================

Info
------------
Regarding `multiplication.rb`, I'm assumming that `(2...i).all? { |j| i % j != 0 }` in `#primeNumbers` will break if the condition inside the block evaluates to false. If not, then this function would be more efficient if it would break whenever `i % j != 0` is false. 

`#products` isn't being used, but it was my attempt to calculate the products once instead of twice. It works, but organizing the output into a table proved difficult. 

Instructions
------------
1. `rspec multiplication_spec.rb` to run tests.
2. `ruby multiplication.rb` to build prime number multiplication table. Enter an integer upon prompt or an error may occur.

