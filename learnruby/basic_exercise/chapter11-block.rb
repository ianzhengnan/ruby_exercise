=begin





=end


array = ["ruby", "Perl", "PHP", "Python"]
# sorted = array.sort
# sorted = array.sort{|a, b| a <=> b}
sorted = array.sort{|a, b| a.length <=> b.length}

p sorted

ary = %w(
  Ruby is a dynamic, open source programming language
  with a focus on simplicity and productivity.
  It has an elegant syntax that is natural to read and easy to write.
)

num = 0
# sort_by 比 sort 更有效率
sorted = ary.sort_by{
    |item|
  num += 1
  item.length }

p sorted
p sorted.size
p num

def myloop
  while true
    yield
  end
end

num = 1
myloop do
  break if num > 100
  num *= 2
  puts "num is #{num}"
end

# define block ___---------

def total(from, to)
  result = 0
  from.upto(to) do |num|
    if block_given?
      result += yield(num)
    else
      result += num
    end
  end
  return result
end

p total(1, 10)
p total(1, 10){|item| item ** 2}

n = total(1, 10) do |num|
  if num % 2 != 0
    next 0
  end
  num
end
p n  # => 30 (2, 4, 6, 8, 10)

# 将块封装成对象
hello = Proc.new do |name|
  puts "Hello, #{name}"
end

hello.call("ruby")
hello.call("python")

# &block 会被自动封装成块
def total2(from, to, &block)
  result = 0
  from.upto(to) do |num|
    if block
      result += block.call(num)
    else
      result += num
    end
  end
  return result
end

p total2(1, 10)
p total2(1, 10){|num| num ** 2}


# 块的传递
def call_each(ary, &block)
  ary.each(&block)
end

call_each [1,2,3] do |item|
  p item
end


x = y = z = 0

ary = [1,2, 3]
# 这里的x为块变量， y为块局部变量
ary.each do |x;y|
  y = x
  z = x
  p [x, y, z]
end
puts
p [x, y, z]

# [1, 1, 1]
# [2, 2, 2]
# [3, 3, 3]
#
# [0, 0, 3]

