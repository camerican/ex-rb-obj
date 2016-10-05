# Model Baseball team
class BaseballTeam
  attr_reader :name # creates lines 10-12
  attr_accessor :city # creates lines 13-18

  def initialize name, city
    @name = name
    @city = city
  end
  # def name 
  #   @name
  # end
  # def city
  #   @city
  # end
  # def city= city
  #   @city = city
  # end
end

mets = BaseballTeam.new "Metropolitans"
nats = BaseballTeam.new "Nationals"

p mets # is like: puts mets.inspect
p nats