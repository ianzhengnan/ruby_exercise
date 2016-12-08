
arr = File.readlines("test.txt")
puts arr
arr.reverse!
puts arr

File.open("test.txt", "w") do |io|
  arr.each do |item|
    io.write(item)
  end
end
