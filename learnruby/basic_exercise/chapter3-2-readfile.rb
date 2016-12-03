# filename = ARGV[0]
#
# file = File.open(filename)
#
# text = file.read
#
# print text
#
# file.close

# print File.read(ARGV[0])

pattern = Regexp.new(ARGV[0])
filename = ARGV[1]

file = File.open(filename)
file.each_line do |line|
  if pattern =~ line
    print line
  end
end

file.close