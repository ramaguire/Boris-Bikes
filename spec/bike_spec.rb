require_relative '../lib/docking_station.rb'
require_relative '../lib/bike.rb'

describe Bike do
  it 'responds to question working?' do
  # Arrange
  this_bike = Bike.new
  # Act
  expect(this_bike).to respond_to (:working?)
  # Assert
  end
end
