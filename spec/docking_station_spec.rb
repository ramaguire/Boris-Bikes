require_relative '../lib/docking_station.rb'
require_relative '../lib/bike'

describe DockingStation do

  it 'releases bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to eq bike
  end

  it 'tells if bike is working' do
    #Arrange
    object = Bike.new
    #Assert
    expect(object).to be_working  
  end

  it { is_expected.to respond_to(:bike) }

  it 'docks bike' do
    bike = Bike.new
    # We want to return the bike we dock
    expect(subject.dock(bike)).to eq bike
  end

  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    # Again, we need to return the bike we just docked
    expect(subject.bike).to eq bike
  end

  it "should raise error when release_bike from empty dock" do
    ds = DockingStation.new
    @bikes = []
    expect{ds.release_bike}.to raise_error
  end

end
