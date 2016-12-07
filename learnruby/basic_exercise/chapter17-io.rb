=begin



=end


$stdout.print "Output to $stdout.\n"
$stderr.print "Output to $stderr.\n"

if $stdin.tty?
  # 在命令行执行显示它
  print "Stdin is a TTY.\n"
else
  # 直接执行显示它
  print "Stdin is not a TTY.\n"
end

# 使用代码块，完毕后会自动关闭文件
File.open("log.txt") do |io|
  # 以下为gets的经典用法
  while line = io.gets
    puts "#{io.lineno} : #{line.chomp!}" # 不加chomp! 中文会出现乱码
  end

  # 方法二
  # io.each_line do |line|
  #   puts line.chomp!
  # end

  # 方法三: 一次性读取所有的数据先放入数组中
  # arr = io.readlines
  # arr.each_line do |line|
  #   puts line.chomp!
  # end

  p io.eof?
end

File.open("log.txt") do |io|
  p io.read(5)
  puts io.read
end

# File.open("log.txt") do |io|
#   p io.read(5)
#   p io.pos
#   io.pos = 0
#   puts io.gets
# end


io = File.open("test.txt", "w+")
io.print("Hello, World.\n")
io.rewind
p io.gets

File.open("foo.txt", "w") do |io|
  io.binmode
  io.write "Hello, World.\n"
end

