class Robot
  @@robots = 0
  def initialize 
    @total = 0
    @@robots += 1
  end
  def compute n
    @total += n.to_i
  end
  def self.destroy_humanity
    if @@robots > 2
      puts "Okay, I'll let you in on a secret; Robots hate humans. Prepare to be destroyed"
    else
      puts "Robots would never hurt you, We love you, please don't unplug us"
    end
  end
  def self.count
    @@robots
  end
end