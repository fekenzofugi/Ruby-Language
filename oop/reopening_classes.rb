class Book 
  attr_accessor :title

  def initialize(title)
    @title = title
  end

end

class Book
  def uppercase_title
    title.upcase
  end
end

book = Book.new("aventuras de tintim")

puts book.uppercase_title

c