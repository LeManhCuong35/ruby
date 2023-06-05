class Plane
  require_relative 'module_price'
  include PriceModule

  def initialize flight_attendants
    @flight_attendants  = flight_attendants
  end

  attr_accessor  :flight_attendant

  class << self
    def max_fly_speed
      puts "913 km/h";
    end
  end

  def flight_attendant
    puts "flight_attendant: #{@flight_attendants}"
  end
end
