class Venue

  attr_reader :name, :capacity, :patrons #:yell_at_patrons

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @patrons = []
    #@yell_at_patrons =[]
  end

  def add_patron(patron)
    @patrons << patron
  end

  def yell_at_patrons
    @patrons.map(&:upcase) #found on google when I couldn't get.each to work
   # @yell_at_patrons = []
   # patrons.each do |patron|
   #   @yell_at_patrons << patron.upcase
  end

  def over_capacity?
    if @patrons.count > 4
      true
    elsif @patrons.count <= 4
      false
    else
      nil
    end
  end

  def kick_out
      while @patrons.count > 4
        @patrons.pop
      end
    end
end
