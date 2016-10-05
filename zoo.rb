# - Create an "object zoo". Create a class that models a `Zoo` which has at least one attribute called `exhibits`. Inside of this attribute is an array of object instances extended from an `Animal` class that have their own unique traits depending on which animal they are.

class Zoo
  attr_reader :exhibits, :graveyard
  def initialize
    @exhibits = []
    @graveyard = []
  end
  def addAnimal animal
    @exhibits.push animal
  end
  def cleanUp
    @exhibits.each_with_index do |animal,index|
      #if !animal.alive?
      # puts "#{animal}, #{index}"
      @graveyard.push( @exhibits.slice! index ) unless animal.alive?
    end
  end
end
# my_animal = Animal.new "Harambe"
class Animal
  attr_accessor :name
  def initialize name
    @name = name
    @alive = true
  end
  def die
    @alive = false
  end
  def alive?
    @alive
  end
end
class Zebra < Animal
  def talk
    "neeeiighhhhh"
  end
end
class Fish < Animal
  def initialize name, f_canibal=true
    super name
    @f_canibal = f_canibal
  end
  def is_canibal?
    @f_canibal
  end
end
class Tiger < Animal
  def initialize options = {}
    super options[:name]
  end
  def kill animal
    animal.die
  end
end


# - Create unique methods on all of your objects depending on what kind of animal they are supposed to emulate (`roar` for a `Lion` object, `fly` for `Eagle` object, etc). You could use `super` and even have a method on `Animal` that is customized per specific animal objects.