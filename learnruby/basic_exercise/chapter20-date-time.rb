
# p Time.new
# sleep(3)
t = Time.now

p t.year
p t.month
p t.day
p t.hour
p t.min
p t.sec
p t.usec
p t.to_i # 时间戳
p t.wday
p t.mday
p t.yday
p t.zone

# 制作时间
ti = Time.mktime(2016,5,3, 3,11, 12)
p ti


# 时间的计算
t1 = Time.now
sleep(1)
t2 = Time.new
p t1 < t2
p t2 - t1

t3 = Time.now
p t3
t4 = t3 + 60 * 60 * 24
p t4

p t3.utc
p t3.localtime

require 'time'
p Time.parse("2015-2-4")
p Time.parse("2015/2/4")

require 'date'
d = Date.today
puts d

d1 = Date.new(2016,12,31)
puts d1
puts d1 + 1
puts d1 - 1
puts d1 >> 2

puts Date.parse("2017-2-18")
