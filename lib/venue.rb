class Venue
  attr_accessor :patrons
  attr_reader :name, :capacity
  def initialize(name, int)
    @name = name
    @capacity = int
    @patrons = []
  end

  def add_patron(i)
    self.patrons << i.to_s
  end

  def yell_at_patrons
    modified_array = []

    self.patrons.each do |i|
      modified_array << i.upcase
    end

    return modified_array
  end

  def over_capacity?
    if self.patrons.size <= self.capacity
      false
    else
      true
    end
  end

  def kick_out
    for i in self.patrons # I definitely could've made this very simple with just an 'until' loop but I want to get comfortable with 'for' loops
      self.patrons.pop until self.patrons.size <= self.capacity
    end

  end
end
