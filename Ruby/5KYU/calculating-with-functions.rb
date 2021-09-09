=begin
https://www.codewars.com/kata/525f3eda17c7cd9f9e000b39
=end

# my solution
def zero(proc = Proc.new { |x| x })
  proc.call(0)
end

def one(proc = Proc.new { |x| x })
  proc.call(1)
end

def two(proc = Proc.new { |x| x })
  proc.call(2)
end

def three(proc = Proc.new { |x| x })
  proc.call(3)
end

def four(proc = Proc.new { |x| x })
  proc.call(4)
end

def five(proc = Proc.new { |x| x })
  proc.call(5)
end

def six(proc = Proc.new { |x| x })
  proc.call(6)
end

def seven(proc = Proc.new { |x| x })
  proc.call(7)
end

def eight(proc = Proc.new { |x| x })
  proc.call(8)
end

def nine(proc = Proc.new { |x| x })
  proc.call(9)
end

def plus(number)
  Proc.new { |x| x + number }
end

def minus(number)
  Proc.new { |x| x - number }
end

def times(number)
  Proc.new { |x| x * number }
end

def divided_by(number)
  Proc.new { |x| x / number }
end
