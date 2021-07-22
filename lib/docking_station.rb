require_relative './bike.rb'

class DockingStation

  attr_reader :storage
  attr_reader :capacity
  DEFAULT_CAPACITY = 20

  def initialize (capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @storage = []

  end

  def release_bike 
    fail 'No bikes available' if self.empty?
    @storage.pop 
  end

  def dock(bike)
    fail 'dock is full' if self.full?
    @storage << bike
  end

  private
  def full?
    @storage.count >= @capacity
  end

  def empty?
    @storage.empty?
  end
end