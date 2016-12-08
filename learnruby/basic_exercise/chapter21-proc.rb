
hello1 = Proc.new do |name|
  puts "Hello, #{name}."
end

hello1.call("World")

# 判断闰年
leap = Proc.new do |year|
  year % 4 == 0 && year % 100 != 0 || year % 400 == 0
end

# 两种调用格式
p leap.call(2000)
p leap[2000]
p leap.call(2013)
p leap.call(2016)


double = Proc.new do |*args|
  args.map{|i| i * 2}
end
p double.call(1,2,3)
p double[2,3,4]

# lambda 不同点1：对参数检查更加严格
double2 = lambda do |*args|
  args.map{|i| i * 2}
end

p double2.call(1,2,3)

# 不同点2：lambda可以有返回值， 返回一个Proc对象
def power_of(n)
  lambda do |x|
    return x ** n
  end
end

cube = power_of(3)
p cube.call(5)

p %w(42,34,53).map(&:to_i)


