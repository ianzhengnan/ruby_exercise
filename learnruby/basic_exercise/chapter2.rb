names = ["flks", "kaka", "小明", "小张"]

names.each do |name|
  # 如果names里含有数值，则会报错
  if /小/ =~ name
    puts name
  end
end

=begin

:name 符号： 是一种轻量级的字符串，可以用来表示方法的名字。
通常用来在散列中表示key
sym = :foo
符号和字符串之间可以相互转换
sym.to_s = "foo"
"foo".to_sym = :foo


2. 散列就是字典类型


=end

address = {:name => "郑楠", :pinyin => "zhengnan", :age => 34}

address.each do |key, value|
  puts "#{key}: #{value}"
end

def test
  puts "test1234567"
end

