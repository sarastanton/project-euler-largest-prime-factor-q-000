# Enter your procedural solution here!
def find_factors(num)
  Array(1..Math.sqrt(num)).select{|x| num % x == 0}
end

def is_prime?(num)
  (2..num/2).none?{|x| num % x == 0 }
end

def largest_prime_factor(num)
  find_factors(num).select{|x| is_prime?(x)}.max
end
