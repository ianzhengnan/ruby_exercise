=begin



=end



# exercise -----------------------------------------------
/(.+)@(.+)/ =~ "ian.zhengnan@gmail.com"

puts $1,$2

str = "正则表达式真难啊，怎么这么难懂！"

str = str.sub(/.难/,"简单")
str2 =  str.gsub(/.难/, "易")

puts str2


def word_capitalize(str)
  result = ""
  str.split("-").each do |item|
    if result == ""
      result = item.capitalize
    else
      result = result + "-" + item.capitalize
    end
  end
  return result
end

p word_capitalize("x-hello-world")
p word_capitalize("x-MAILER")


