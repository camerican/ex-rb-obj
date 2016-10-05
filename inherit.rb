
# A RealEstateProperty (as in real-estate)
# Golf Course
# Office Building

class RealEstateProperty
  attr_accessor :address, :size

  def initialize options = {}
    puts "We're building a Real Estate Property!!"
    @address = options[:address]
    @size = options[:size]
  end

  def howl_at_the_moon
    puts "ARROOOOOOOOO"
  end
end

class GolfCourse < RealEstateProperty

  attr_accessor :difficulty_rating
  attr_reader :number_of_holes

  def initialize options = {}
    puts "We're building a Golf Course!!"
    @number_of_holes = options[:number_of_holes] || 18
    @difficulty_rating = options[:difficulty_rating]
    super
  end

  def average_hole_difficulty
    @difficulty_rating / @number_of_holes
  end

  def howl_at_the_moon
    puts "PUTTPUTTPUTTPUTTPUTT"
    super
  end
end

