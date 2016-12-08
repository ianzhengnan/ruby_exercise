
# File.rename("kaka.txt", "backup/test.txt")

def copy(from, to)
  File.open(from) do |input|
    File.open(to, "w") do |output|
      output.write(input.read)
    end
  end
end

# copy("log.txt", "test.txt")

require 'fileutils'

FileUtils.cp("log.txt", "test1.txt")

File.delete("test1.txt")

# p Dir.pwd
# Dir.chdir("backup")
# p Dir.pwd

Dir.open("backup") do |dir|
  dir.each do |name|
    p name
  end
end

p Dir.glob("**/*")

# Dir.mkdir("disk")
# Dir.rmdir("disk")

# require 'etc'
# st = File.stat("log.txt")
# pw = Etc.getpwuid(st.uid)
# p pw.name



