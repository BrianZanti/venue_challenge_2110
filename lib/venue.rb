class Venue

  attr_reader :name, :capacity, :patrons

  def initialize(name, capacity, patrons = [])
    @name = name
    @capacity = capacity
    @patrons = patrons
  end

  def add_patron()
    @patrons['name']
  end

  def yell_at_patrons
    @patrons.upcase
  end
end
#
# pry(main)> venue = Venue.new('Bluebird', 4)
# => #<Venue:0x00007fed7c11dbd8 @capacity=4, @name="Bluebird", @patrons=[]>
#
# pry(main)> venue.name
# => "Bluebird"
#
# pry(main)> venue.capacity
# => 4
#
# pry(main)> venue.patrons
# => []
