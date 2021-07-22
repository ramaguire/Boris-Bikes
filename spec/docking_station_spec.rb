require_relative '../lib/docking_station.rb'
require_relative '../lib/bike'

describe DockingStation do

  describe '#release_bike' do

    it 'releases bike' do
      ds = DockingStation.new
      bike = Bike.new
      ds.dock(bike)
      expect(ds.release_bike).to eq (bike)
    end

    it 'raises an error when asked to release a bike from empty dock' do
      
      expect{subject.release_bike}.to raise_error 'No bikes available'
    end

  end

  it 'tells if bike is working' do
    #Arrange
    object = Bike.new
    #Assert
    expect(object).to be_working  
  end

  describe '#dock' do
    it 'returns docked bikes' do
      ds = DockingStation.new
      bike = Bike.new
      storage = [bike]
      expect(subject.dock(bike)).to eq (storage)
    end

    it 'raises an error when asked to dock a bike when full' do
      subject.capacity.times {subject.dock Bike.new }
      expect{subject.dock(Bike.new)}.to raise_error 'dock is full'
    end

    it 'raises an error when asked to dock a bike when full with non-default capacity' do
      ds = DockingStation.new(10)
      ds.capacity.times {ds.dock Bike.new}
      expect{ds.dock(Bike.new)}.to raise_error 'dock is full'
    end
  
  end
  

end
