# frozen_string_literal: true

# Part 1

def sum(arr)
  arr.sum
end

def max_2_sum(arr)
  arr.max(2).sum
end

def sum_to_n?(arr, number)
  arr.combination(2).any? { |first, second| first + second == number }
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant?(string)
  string.match?(/\A[b-df-hj-np-tv-z]/i)
end

def binary_multiple_of_4?(string)
  string.match?(/\A[01]+\z/) && (string.to_i(2) % 4).zero?
end

# Part 3

# Object representing a book
class BookInStock
  attr_reader :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? || price <= 0

    @isbn = isbn
    @price = price
  end

  def isbn=(isbn)
    raise ArgumentError if isbn.empty?

    @isbn = isbn
  end

  def price=(price)
    raise ArgumentError if price <= 0

    @price = price
  end

  def price_as_string
    format('$%.2f', price)
  end
end
