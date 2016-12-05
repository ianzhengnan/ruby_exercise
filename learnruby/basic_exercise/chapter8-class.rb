=begin

BasicObject
  Object
    Array
    String
    Hash
    Regexp
    IO
      File
    Dir
    Numeric
      Integer
        Fixnum
        Bignum
      Float
      Complex
      Rational
    Exception
    Time

=end

arr = Array.new

p arr.class

p 0.class

p "kaka".class


p arr.instance_of?(Array)
p arr.instance_of?(String)

# BasicObject 类是ruby的所有类型的父类

str = "This is a String"
p str.is_a?(String)
p str.is_a?(Array)
p str.is_a?(Hash)
p str.is_a?(Object)
p str.is_a?(BasicObject)

class Test

  # 类常量
  Version = "1.0"

  # 局部变量
  ver = "2.0"

  def self.say_hi
    puts "hello"
  end

  def Test.say_bye
    puts "bye"
  end

end

Test.say_hi

Test.say_bye

# 访问类常量
p Test::Version

class Hellocount

  # 类变量可以被外界修改，但是必须自定义access方法
  # 不能使用attr_accessor, attr_reader, attr_writer
  @@count = 0

  def Hellocount.count
    @@count
  end

  def initialize(myname = "Ruby")
    @name = myname
  end

  def hello
    @@count += 1
    puts "Hello, world. I am #{@name}"
  end
end

bob = Hellocount.new("bob")
alice = Hellocount.new("alice")
ruby = Hellocount.new

p Hellocount.count
bob.hello
alice.hello
ruby.hello
p Hellocount.count


class AccTest
  public # 不指定参数时候，以下方法都是public

  # 没有指定public的方法其实就是public的方法，例外是initilize方法，它默认是private

  def pub_test
    puts "I am a public method."
  end

  private # private method below

  def priv_test
    puts "I am a private method."
  end

  # You can use below way to set a method as a private method
  # private :priv_test

end

at = AccTest.new
at.pub_test

class Point
  attr_accessor :x, :y
  # protected 修饰 :x=, :y= 表示同一个类中（及其子类）中可以访问。但是外部不可以访问
  protected :x=, :y=

  def initialize(x = 0.0, y = 0.0)
    @x, @y = x, y
  end

  def swap(other)
    tmp_x, tmp_y = @x, @y
    @x, @y = other.x, other.y
    other.x, other.y = tmp_x, tmp_y
    return self
  end
end

p0 = Point.new
p1 = Point.new(1.0, 2.0)

p [p0.x, p0.y]
p [p1.x, p1.y]

p0.swap(p1)

p [p0.x, p0.y]
p [p1.x, p1.y]

# p0.x = 20.1 ＃ 会报错

class String
  def count_word
    ary = self.split(/\s+/)
    return ary.size
  end
end

str = "I am a Ruby developer"
p str.count_word


class WeekArray < Array
  def [](i)
    idx = i / size
    super(idx)
  end
end

wday = WeekArray["Mon", "Tue", "Wed", "Thur", "Fir"]
p wday[6]
p wday[-1]
p wday[0]

class C1
  def hello
    puts "hello"
  end
end

class C2 < C1
  # 这两种方法都可以，用别名定义方法
  # alias_method :hello_old, :hello
  alias hello_old hello

  def hello
    puts "hello new one"
  end

  def say_hi
    puts "hi"
  end
  # 通常用来删除某一个父类的方法
  undef :say_hi
end

c2obj = C2.new
c2obj.hello_old
c2obj.hello
# c2obj.say_hi  # say_hi 被 undef了

str1 = "Ruby"
str2 = "Ruby"

# 为对象str1添加单例方法, 用于增强某对象的功能
class << str1
  def hello
    "Hello, #{self}"
  end
end

p str1.hello
# str2.hello










