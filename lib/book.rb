require_relative 'rental'

class Book
  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  attr_accessor :title, :author
  attr_reader :rentals

  def add_rental(rental)
    return if !rental.is_a?(Rental) || rentals.include?(rental)

    rentals << rental
  end
end
