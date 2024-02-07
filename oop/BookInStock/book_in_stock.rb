class BookInStock

  attr_reader :isbn, :price

  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end

  def price_in_cents
    # Use price because we don't want float issues in arithmetic.
    (price * 100).round
  end

end



