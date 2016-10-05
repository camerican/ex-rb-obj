# Create object with two attributes and an instance method

# artist
# name
# length

class Song
  attr_reader :artist, :length
  attr_accessor :name

  #def initialize artist=nil, name=nil, length=nil
  def initialize options = {}
    @artist = options[:artist] || "No artist"
    @name = options[:name] # || "No name"
    @length = options[:length] || 0
    @record_company = options[:record_company] || "Death Row"
         # to do: make sure the length is in 
         #        seconds....  parse input
  end

  # get the full title of this track...
  def title
    "#{@artist} - #{@name} (#{@length})"
  end

end

# Phone.new "iPhone", "rosegold", "Sprint"






