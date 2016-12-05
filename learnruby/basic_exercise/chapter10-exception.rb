=begin

不捕捉异常就意味着如果有问题，程序就会立马终止。
所以，异常捕捉很重要

P148

=end


ltotal = 0
wtotal = 0
ctotal = 0

ARGV.each do |file|
  begin
    input = File.open(file)
    l = 0
    w = 0
    c = 0
    input.each_line do |line|
      l += 1
      c += line.size
      line.sub!(/^\s+/, "")
      ary = line.split(/\s+/)
      w += ary.size
    end
    input.close
    printf("%8d %8d %8d %s\n", l, w, c, file)
    ltotal += l
    wtotal += w
    ctotal += c
  rescue => ex
    print ex.message, "\n"
  end
end

printf("%8d %8d %8d %s\n", ltotal, wtotal, ctotal, "total")

=begin

C:\Users\i076453\git\ruby_exercise\learnruby\basic_exercise>ruby chapter10-exception.rb chapter8-class.rb chapter8-uri.rb chapter11.rb
     225      377     3099 chapter8-class.rb
       8       16      158 chapter8-uri.rb
No such file or directory @ rb_sysopen - chapter11.rb
     233      393     3257 total


=end