require 'prime'

prime_array = Prime.take_while { |p| p < 2_000_000 }

total_count = prime_array.inject { |sum, x| sum + x }

p total_count

# 142,913,828,922 total count of primes from 0 - 2 million
# looks for all primes and puts in array and then put in a method
# and then added all of them by stacking ( sum is total value returned in count)
#implementing numbers in prime.....<><<><><><><><><><><><><