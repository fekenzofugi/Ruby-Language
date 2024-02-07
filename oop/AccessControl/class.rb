# three levels of control: public, protected and private methods.
# public: acessible everywhere except for initialize that is private
# protected: objects of the class and subclasses
# private: current object self

class MyClass

  # default public
  def method1

  end

  protected 
  # all subsequence methods will be "protected"
  def method2

  end

  private
  # all subsequence methods will be "private"
  def method3
    
  end

  public 
  
  def method4

  end

end

class OtherClass

  def method1 

  end

  def method2

  end

  private def method3

  end

end

class Instrument
  protected attr_reader :price
  public attr_reader :name
  
  def initialize(name, price)
    @name = name
    @price = Float(price)
  end

  def play 
    puts("#{name} is playing!")
  end

  def price_is_higher?(other)
    @price > other.price
  end

end

guitar = Instrument.new("guitar", 100)
cello = Instrument.new("cello", 300)

if (guitar.price_is_higher?(cello)) 
  puts "guitar is more expensive than the cello."
else
  puts "cello is more expensive than the guitar."
end