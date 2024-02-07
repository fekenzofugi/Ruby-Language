class BookInStock

  # We can use the shortcut attr_reader for the acessor methods
  attr_reader :isbn

  # We can use the shortcut arrt_accessor for the attribute setting methods
  attr_accessor :price

  #special method
  def initialize(isbn, price)
    @isbn = isbn

    #if parse fails -> error
    @price = Float(price)
  end

  def to_s 
    # Inside each object all instance variables are available for all instance methods.
    "ISBN: #{@isbn}, price: #{@price}" 
  end

  # We use round to get the best integer representation. A floating point don't always have the best decimal representation. We should use BigDecimal instead.
  def price_in_cents 
    (price * 100).round
  end

  def price_in_cents=(cents)
    @price = cents / 100.0
  end

  # attribute setting method.
  # def set_price=(new_price)
  #   @price = new_price
  # end

  # acessor methods
  # def isbn 
  #   @isbn
  # end

  # def price
  #   @price
  # end

end

puts "BookInStock class"
puts "\n"

b1 = BookInStock.new("isbn1", 3)
p b1 # p method prints an internal representation of the object
puts b1.to_s

b2 = BookInStock.new("isbn2", 3.14)
p b2
puts b1.to_s

b3 = BookInStock.new("isbn3", "5.67")
p b3
puts b3.to_s

b4 = BookInStock.new("isbn4", "10.10")
puts b4 # by default puts calls the to_s
puts b4.to_s

book = BookInStock.new("isbn5", 33.80)
puts "ISBN = #{book.isbn}"
puts "price = #{book.price}" # an attribute is just a method
book.price = book.price * 0.75
puts "New Price = #{book.price}"
puts "Price in cents: #{book.price_in_cents}"

book.price_in_cents=1234
puts "Price = #{book.price}"
puts "Price in cents = #{book.price_in_cents}"


puts "\n"
puts "\n"

puts "Instrument Class"
puts "\n"

class Instrument

  attr_accessor :price

  def initialize(name, group, price) 
    @name = name
    @group = group
    @price = price
  end

  def price_in_cents
    (price * 100).round
  end

end

guitar = Instrument.new("guitar", "strings", 100)
puts "Price in cents = #{guitar.price_in_cents}"

puts "\n\n"