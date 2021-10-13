class Venue
  attr_reader :name, :capacity, :patrons

  def initialize (name, capacity)
    @name = name
    @capacity = capacity
    @patrons = []
  end

  def add_patron (patron)
    patrons << patron
  end

  def yell_at_patrons
    names_yelled = []
    patrons.each do |yell|
      names_yelled << yell.upcase
    end
    return names_yelled
  end 

end
