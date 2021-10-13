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

end
