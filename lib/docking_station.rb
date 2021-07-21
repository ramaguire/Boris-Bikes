require 'bike.rb'

class DockingStation

  attr_reader :bikes

  def bike
    @bike
  end

  def release_bike 
    @bike
  end

  def dock(bike)
    @bike = bike
  end

end

