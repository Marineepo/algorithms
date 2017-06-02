def factorial_value_sum_generator(factorial)
  arr = (1..factorial).to_a.reverse.each { |i| factorial += factorial * (i - 1)}
  factorial.to_s.split(//).map(&:to_i).inject(:+)
end

p factorial_value_sum_generator(100)


# ruby project_uler_21
# answer is 648 