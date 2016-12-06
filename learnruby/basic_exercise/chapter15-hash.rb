=begin



=end


h = Hash.new

h.store("R", "Ruby")

 p h.fetch("R")

h = {"a" => "b", "c" => "d"}
p h.keys
p h.values

h.each do |item|
  puts item
end

h.each_pair do |key, value|
  puts "#{key}, #{value}"
end

p h.to_a # [["a", "b"], ["c", "d"]]

# 创建时的默认值是8
h1 = Hash.new(8)
p h1["a"]

p h1

# 分别对不同的key 创建不同的默认值
h2 = Hash.new do |hash, key|
  hash[key] = key.upcase
end

h2["a"] = "b"
p h2["a"]
p h2["x"]

h = {"a" => "b", "c" => "d"}
p h.key?("a")
p h.has_key?("a")
p h.include?("x")
p h.member?("d")
p h.value?("b")
p h.has_value?("z")

p h.size
p h.length
p h.empty?

h3 = Hash.new
p h3.empty?

h.clear
p h.size

# # encoding: gbk
# count = Hash.new(0)
#
# File.open(ARGV[0]) do |f|
#   f.each_line do |line|
#     words = line.split
#     words.each do |word|
#       count[word] += 1
#     end
#   end
# end
#
# p count
#
# count.sort{|a, b|
#   a[1] <=> b[1]
# }.each do |key, value|
#   print "#{key}: #{value}\n"
# end

# exercise _---------------------------------

wday = Hash.new("")

wday = {:Monday => "星期一", :Tuesday => "星期二", :Wednesday => "星期三",
:Thursday => "星期四", :Friday => "星期五", :Saturday => "星期六", :Sunday => "星期日"}

# 不要用p显示，用p显示会只显示编码
p wday # {:Monday=>"\u661F\u671F\u4E00", :Tuesday=>"\u661F\u671F\u4E8C", :Wednesday=>"\u661F\u671F\u4E09", :Thursday=>"\u661F\u671F\u56DB",

wday.each do |key, value|
  print "#{key} 是", value , "\n"
end

puts
puts wday[:Monday]

p wday.size

p "some string".encode "ISO-8859-1"

def str2hash(str)
  arr = Array.new
  h = Hash.new("")
  arr = str.split
  # p arr
  arr.each_with_index do |item, index|
    if index % 2 == 0
      h[item] = arr[index + 1]
    end
  end
  return h
end

str2hash("blue 蓝色 while 白色 \nred 红色").each do |key, value|
  print "#{key} : ", value, "\n"
end
