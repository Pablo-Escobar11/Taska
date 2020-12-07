class Route
  attr_reader :start_station, :finish_station, :stations

  def initialize(start_station, finish_station)
    @start_station = start_station
    @finish_station = finish_station
    @stations = []
    @stations << start_station
    @stations << finish_station
  end

  def add_station(station)
    @stations.insert(-2, station)
  end

  def delete_station(station)
    if station == start_station || station == finish_station
      puts "we cant't dellete start or finish station "
    else
      @stations.delete(station)
    end
  end

  def show_sations
    stations.each { |station| puts station.name.to_s }
  end
end
