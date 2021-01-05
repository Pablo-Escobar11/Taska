class Train
  attr_reader :number, :route, :station, :type
  attr_accessor :speed, :cars, :type_of_car, :start_station, :finish_station, :stations

  def initialize(number)
    @number = number
    @speed = 0
    @cars = []
  end

  def speed_dial(speed)
    @speed += speed
  end

  def stop
    @speed = 0
  end

  def car_add(car, type_of_car)
    if type_of_car == @type && @speed.zero?
      @cars << car
    else
      puts 'you should add cargo or passenger'
    end
  end

  def car_remove(car)
    @cars.delete(car) if @speed.zero?
  end

  def get_route(route)
    @route = route
    @station = @route.start_station
    route.start_station.get_train(self)
    puts "train #{number} has a route #{route.stations.first.name} - #{route.stations.last.name}"
  end

  def go_to_next_station
    if @station.name == @route.stations.last.name
      puts "you can't go, you at the last station"
    else
      station_index = @route.stations.index(@station)
      @station.send_train(self)
      @station = @route.stations[station_index + 1]
      @station.get_train(self)
    end
  end

  def go_to_previos_station
    if @station.name == @route.stations.first.name
      puts "you can't go, you at the first station"
    else
      station_index = @route.stations.index(@station)
      @station.send_train(self)
      @station = @route.stations[station_index - 1]
      @station.get_train(self)
    end
  end

  def current_station
    @station.name
  end

  def previous_station
    station_index = @route.stations.index(@station)
    puts "previous station is #{@route.stations[station_index - 1].name}" if station_index != 0
  end

  def next_station
    station_index = @route.stations.index(@station)
    puts "next station is #{@route.stations[station_index + 1].name}" if station_index < @route.stations.size
  end
end
