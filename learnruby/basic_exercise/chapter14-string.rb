=begin



=end


hello = "hello "
world = "world!"

p str = hello + world # 不改变原有
# p str = hello << world # 改变原有
p hello
p world

p str = hello.concat(world) # 会改变原有
p hello


stri = "kakkaksdfsdsdfs"
p stri.include?("sdf") # => true
p stri.index("sdf") # => 6
p stri.rindex("sdf") # => 11

stri[2, 1] = "C"
p stri

str = "Hello, Ruby."
p str.slice!(-1)
p str.slice!(5..6)
p str.slice!(0,5)
p str

p str.slice(1)
p str


str = "AA\nBB\nCC\n"
p str.each_line.class
p str.each_line.methods
p str.each_line.map { |line| line.chop }
p str.each_byte.reject { |c| c == 0x0a}

p str.delete("A") # 大小写敏感
p str

p str.delete!("B")
p str

p str.reverse
p str

p str.reverse!
p str

str = "   kaka    "
p str
p str.strip
p str.strip.upcase

p str.strip.swapcase # 大小写开关

p str.strip!
p str.capitalize

#

gbk_str = "中文也能显示很好"
p gbk_str
p gbk_str.encode("utf-8")
p gbk_str


# EXERCISE-----------------------------------

str1 = "Ruby is an object oriented programming language"
ary = []
ary = str1.split
p ary

ary1 =  ary.sort do |a, b|
  a.length <=> b.length
end

p ary1

ary2 = ary.collect do |item|
  item.capitalize
end
p ary2

# No.6------------------------------------
str = "三万两千八百二十九"
num = 0
pre_num = 0

def sum(pre_num, num, step)
  num += pre_num * step
  return num
end

count = 1

str.each_char do |item|

  case item
    when "一"
      pre_num = 1
    when "二", "两"
      pre_num = 2
    when "三"
      pre_num = 3
    when "四"
      pre_num = 4
    when "五"
      pre_num = 5
    when "六"
      pre_num = 6
    when "七"
      pre_num = 7
    when "八"
      pre_num = 8
    when "九", "久"
      pre_num = 9
    when "万"
      num = sum(pre_num, num, 10000)
      pre_num = 0
    when "千"
      num = sum(pre_num, num, 1000)
      pre_num = 0
    when "百"
      num = sum(pre_num, num, 100)
      pre_num = 0
    when "十"
      num = sum(pre_num, num, 10)
      pre_num = 0
    else

  end

  if count == str.length
    num += pre_num
  end
  count += 1

end

p num

# No.5------------------------------------

ret = {}

str1.each_char do |item|
  #puts item
  if ret[item] != nil
    ret[item] += 1
  else
    ret[item] = 1
  end
end

ret.each do |key, value|
  print "'#{key}' :  ", value, "\n"
end