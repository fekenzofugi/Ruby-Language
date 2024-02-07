class BookInStook

  #special method
  def initialize(isbn, price)
    @isbn = isbn

    #if parse fails -> error
    @price = Float(price)
  end
end

b1 = BookInStook.new("isbn1", 3)
p b1 # p method prints an internal representation of the object

b2 = BookInStook.new("isbn2", 3.14)
p b2

b3 = BookInStook.new("isbn3", "5.67")
p b3

b4 = BookInStook.new("isbn4", "10.10")
p b4