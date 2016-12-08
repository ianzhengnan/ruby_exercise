

def tail(line_num, filename)

  File.open(filename) do |io|
    io.each_line do |line|
      if io.lineno > line_num
        puts line.chomp!
      end
    end
  end

end

tail(2, "test.txt")


