require 'pry'

class Coffee
    attr_reader :name
    attr_accessor :price, :ingredients

    @@all = []

    def initialize(name, price = 2.50)
        @name = name
        @price = price
        @ingredients = []
        binding.pry
        @@all << self
    end

    def self.all
        @@all
    end

    def self.tally
        @@tally
    end

    def count
        @@tally+=1
    end

    def add_ingredient(ingredient)
        self.price += 0.50
        self.ingredients << ingredient
    end

end

c1 = Coffee.new('rose', 3.00)
c2 = Coffee.new('todd')
c3 = Coffee.new('ix')

binding.pry