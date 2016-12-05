=begin

模块表现的只是行为部分

模块和类的区别
1. 模块不能有实例
2. 模块不能被继承

=end



module Hellomodule
  Version = "1.0"

  def hello(name)
    puts "Hello , #{name}"
  end

  def say_hi
    puts "hi"
  end

  module_function :hello, :say_hi

end

p Hellomodule::Version
 Hellomodule.say_hi
 Hellomodule.hello("kaka")

# include Hellomodule
# p Version
#  say_hi
#  hello("张三")

# mix-in 类似于java里的接口， ruby是单一继承的
=begin

1. 类里有相同的方法，优先使用类里的方法
2. 同一个类中包含多个方法时，优先使用最后一个包含的模块
3. 嵌套inlcude的时候，查找顺序是线性的
4. 相同的模块被包含两次以上时， 第二次以后会被省略

=end

module M
  def meth
    "meth"
  end
end

class C
  include M
end

c = C.new
p c.meth
p C.include?(M)   # => true

p C.ancestors # => [C, M, Object, Hellomodule, Kernel, BasicObject]
p C.superclass # => Object

module Edition

  def edition(n)
    "#{self} 第#{n}版"
  end
  module_function :edition
end


str4 = "Ruby基础教程"
str4.extend(Edition)
# p str4.edition(4)


module ClassMethods
  def cmethod
    "class method"
  end
end

module InstanceMethods
  def inmethod
    "instance method"
  end
end

class MyClass
  # 使用extend 方法定义类方法
  extend ClassMethods
  # 使用 include方法定义实例方法
  include InstanceMethods
end

p MyClass.cmethod
p MyClass.new.inmethod

f = 3.14
p f.round  #=> 3
p f.ceil  #=> 4
p f.to_i  #=> 3

t = Time.now
# singleton_methods 展示所有的类方法
p Time.singleton_methods

p t.year
p t






