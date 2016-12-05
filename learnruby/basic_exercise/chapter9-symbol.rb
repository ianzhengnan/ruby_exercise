
# name = "Ruby"
# if var
#   name = var
# end

# 上面这些可以用下面一步代替
# name = var || "Ruby"

=begin

在确定对象存在，再调用方法的时候，用&&更有效

item = nil
if ary
  item = ary[0]
end

可以用下面语句代替
item = ary && ary[0]

------------------------

var ||= 1
与
var = var || 1
一样，只有在var 为nil, false的时候，才把1赋值给它


---------------------------

范围运算符

Range.new(1, 10)  ==> 1..10

for i in 1..5

end

1..5 diff with 1...5
1..5 [1,2,3,4,5]
1...5 [1,2,3,4]




=end



