
require 'open-uri'

options = {
    "Accept-Language" => "zh-cn, en;q=0.5"
}

open("http://www.ruby-lang.org", options) do |io|
  puts io.read
end

#
# url = "https://cache.ruby-lang.org/pub/ruby/2.3/ruby-2.3.3.tar.gz"
# open(url) do |io|
#   open("ruby-2.3.3.tar.gz", "w") do |f|
#     f.write(io.read)
#   end
# end

require 'stringio'

# StringIO 用字符串来模拟输入，输出
io = StringIO.new
io.puts("A")
io.puts("B")
io.puts("C")
io.rewind
p io.read

io1 = StringIO.new("A\nB\nC\n")
p io1.gets
p io1.gets
p io1.gets
