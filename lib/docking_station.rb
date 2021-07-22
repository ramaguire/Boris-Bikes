
class DockingStation

  attr_reader :bikes, bike

  def initialize
    @bikes = []
  end

  def release_bike 
    fail 'No bikes available' unless @bikes.count <20
    @bikes.pop
  end

  def dock(bike)
    fail 'dock is full' if @bikes.count >= 20
    @bikes.push << bike
  end

end