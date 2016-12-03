
=begin



=end


8.times do
  puts "满地油菜花"
end

3.times{
  puts "hello"
}

5.times do |i|
  puts "当前是第#{i}次循环"
end


sum = 0
for i in 1..5
  sum += i
end

puts sum

arr = ["kaka", "Taylor", "Gibson", "Fendor"]
for name in arr
  puts name
end

i = 0
while i < 5
  puts "Hello"
  i += 1
end

#程序跨行写的时候用它
arr.each do |name|
  puts name
end

#程序一行写的时候用它
arr.each { |name| puts name }

sum = 0
(1..5).each do |i|
  sum += i
end
puts sum