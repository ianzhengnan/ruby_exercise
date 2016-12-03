=begin

三种条件语句：
if

unless

case

Ruby中的false 是false, nil
Ruby中的true是false, nil 以外的值

约定：返回真假值的方法都以？结尾

if x >=1 &&(and) x <= 10

if x < 1 ||(or) x > 10

if !(not)x == 0

case xxx
  when xxx, xxx
    pass
  when xxx
    pass
  else
    pass
end

!!!important

equal? 方法仅仅判断两个对象的id是否相等

＝＝ 判断两个对象的值是否相等

eql? 也是判断两个对象的值是否相等，但是它比==更加严谨。如：散列表里的Key的比较

=end

p "".empty?

p "kaka".empty?

p /Ruby/ =~ "Ruby is a good computer language." #=>0

p /Ruby/ =~ "Java is a good computer language too." #=>nil

arr = ["a" , 0, nil]

arr.each do |item|
  case item
    when String
      puts "#{item} is a string."
    when Numeric
      puts "#{item} is a numbric"
    else
      puts "#{item} is something else"
  end
end

a , b = 3, 2

puts "a 比 b 大" if a < b

