=begin
auther: zhengnan
mail: eric.zhengnan@gmail.com

=end
class Test
  attr_accessor :names

  def initialize(names = "kaka")
    @names = names
  end

  def say_hi
    if @names.nil?
      puts "..."
    # respond for each 
    elsif @names.respond_to?("each")
      @names.each do |name|
        puts "Hello #{name}"
      end
    else
      puts "Hello #{@names}"
    end
  end

  def say_bye
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("join")
      puts "Hello, #{@names.join(", ")} come back soon!"
    end
  end
end


if __FILE__ == $0
  test = Test.new
  test.say_hi
  test.say_bye

  test.names = "zhengnan"
  test.say_hi
  test.say_bye

  test.names = ["kaka", "Shift", "Ben", "Christ", "John"]
  test.say_hi
  test.say_bye

  test.names = nil
  test.say_hi
  test.say_bye

end