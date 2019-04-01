# Enter your object-oriented solution here!

class LargestPrimeFactor

  attr_accessor :num

  def initialize(num)
    @num = num
  end

  def find_factors
    Array(1..Math.sqrt(self.num)).select{|x| num % x == 0}
  end

  def is_prime?(n)
    (2..n/2).none?{|x| n % x == 0 }
  end

  def number
    find_factors.select{|x| is_prime?(x)}.max
  end

end
