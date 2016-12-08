# (1) ================================================

arr = []
File.open("log.txt") do |io|
  arr = io.readlines
  words = 0
  char_num = 0

  puts "文本行数：#{arr.size}"

  arr.each do |item|
    arr_tmp = item.split(" ")
    words += arr_tmp.size
    item.each_char do |char|
      char_num += 1
    end
  end

  puts "文本的单词数：#{words}"
  puts "文本的字符数：#{char_num}"

end



