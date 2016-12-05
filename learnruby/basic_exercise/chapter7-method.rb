=begin




=end


# 带块的方法调用
=begin

object.test(arg1, arg2,,,) do |var1, var2,,,,|
  pass
end

object.test(arg1, arg2,,,) {|var1, var2,,,,| pass }

=end

# 不带块的方法调用
=begin

object.test(arg1, arg2,,,,)

=end

p "10, 20, 30, 40".split(",")

p [1,2,3,4].index(2)

p 1000.to_s

p Time.now.to_s

def volumn(x, y, z)
  return x * y * z
end

def vol1(x, y, z)
  x * y * z
  #会返回最后一条语句, 没有return的情况下
  x * y * z * 2
end


# 用return可以马上终止程序
# 如果省略return的参数，则返回nil

# 定义带块的函数
def myloop
  while true
    yield
  end
end

num = 1
myloop do
  puts "nums is #{num}"
  break if num > 100
  num *= 2
end

# def foo(*arg)
#   arg
# end
#
# p foo(1,2,3,4,5,6,7)

def meth(arg, *args)
  [arg, args]
end

p meth(2, 2,3,4,5)

# 任意个数参数
def a(a, *b, c)
  [a, b, c]
end

p a(1,2,3,4,5,6)
p a(1,2)

# 多关键字参数
def meth2(x: 0, y: 0, z: 0, **args)
  [x, y, z, args]
end

p meth2(z: 4, y: 2, x: 3)
p meth2(x:3, m: 7, z:2, w: 5)

#混合调用
def meth3(a, b: 1, c: 2)
  [a, b, c]
end

p meth3(1, b: 2, c: 4)

#用散列作为参数
arg1 = {:x => 3, :m => 7, :z => 2, :w => 5}
p meth2(arg1)

def foo(a, b, c)
  a + b + c
end

p foo(1, 2, 3)

# 数组做为参数
args2 = [2, 3]
p foo(1, *args2)
args3 = [1,2,3]
p foo(*args3)

def foo2(arg)
  arg
end

p foo2({"a" => 1, "b" => 2})
p foo2("a" => 1, "b" => 2)
p foo2(a: 1, b: 2)

