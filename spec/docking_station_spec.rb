require_relative '../lib/docking_station.rb'
require_relative '../lib/bike'

describe DockingStation do

  describe '#release_bike' do

    it 'releases bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'raises an error when asked to release a bike from empty dock' do
      ds = DockingStation.new
      @bikes = []
      expect{ds.release_bike}.to raise_error 'No bikes available'
    end

  end

  it 'tells if bike is working' do
    #Arrange
    object = Bike.new
    #Assert
    expect(object).to be_working  
  end

  it { is_expected.to respond_to(:bike) }

  describe '#dock' do
    it 'returns docked bikes' do
      subject.dock(bike)
      expect(subject.dock).to eq (bike)
    end

    it 'raises an error when asked to dock a bike when full'
      @bikes = []
      @bikes.count 20
    expect{subject.dock(bike)}.to raise_error 'dock is full'
  end
  
end
