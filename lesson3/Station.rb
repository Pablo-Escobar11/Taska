class Station
  
  attr_reader :name, :trains

  def initialize(name)
    @name = name
    @trains = []
  end  

  def get_tarin(train)
    @trains << train
  end
  
  def send_train(train)
    @trains.delete(train)  
  end
  
  def show_trains(type)
    trains.map {|train| puts "#{type} number is #{train.number}" if train.type == type} 
  end 
end

class Route
  
  attr_reader :start_station, :finish_station, :stations
  
  def initialize(start_station, finish_station)
    @start_station = start_station
    @finish_station = finish_station
    @stations = []
    @stations << start_station
    @stations << finish_station
  end
  
  def add_stations(station)
    @stations.insert(-2, station)
  end
  
  def remove_stations(station)
    if (station == start_station || station == finish_station) 
      puts "we cant't dellete start or finish station "
    else
      @stations.delete(station)
    end
  end 
   
   def show_sations
    stations.each{|station| puts "#{station.name}"}
   end
end     
  
class Train
    
  attr_reader :number 
  attr_reader :type
  attr_accessor :car_count, :speed
    
  def initialize(number, type, car_count)
    @number = number
    @type = type
    @car_count = car_count
    @speed = 0
  end  

  def speed_dial(speed)
    @speed = @speed + speed
  end 

  def speed_stop
  @speed = 0  
  end

  def car_add
    if @speed.zero?
      @car_count += 1
    end  
  end

  def car_remove 
    if @speed.zero?
      @car_count -= 1
    end
  end 

  def get_route(route)
    @route = route
    puts "train #{number} has a route #{route.stations.first.name} - #{route.stations.last.name}"
  end

  def go_to_next_station(station)
    station.send_train(@train) 
  end

  def previous_station(station)
    station_index = @route.stations.index(station)
    puts "previous station is #{@route.stations[station_index - 1].name}" if station_index != 0
  end  

  def next_station(station)
    station_index = @route.stations.index(station)
    puts "next station is #{@route.stations[station_index+1].name}" if station_index < @route.stations.size
  end
end  
  
station1 = Station.new("Orsha-center")
station7 = Station.new("Lepel")
station5 = Station.new("Chashniki")

route1 = Route.new(station1, station7)
route1.add_stations(station5)
puts "#{route1.stations}"
route1.remove_stations(station5)
puts "#{route1.stations}"
route1.add_stations(station5)
route1.show_sations

train1 = Train.new(1, "passengers", 2)
train2 = Train.new(2, "cargo", 3)

train1.speed_dial(80)
puts "Speed #{train1.speed}"
train1.speed_stop
puts "speed stop #{train1.speed}"
train1.car_add
puts "train #{train1.number} has #{train1.car_count} cars"
train1.car_remove
puts "train #{train1.number} cars left #{train1.car_count}"
train2.get_route(route1)
train2.previous_station(station5)
train2.next_station(station5)
train2.go_to_next_station(station5)

station1.get_tarin(train1)
station5.get_tarin(train2)
puts "#{station1.trains}"
  
station1.show_trains("passengers")
station5.show_trains("cargo")
station1.send_train(train1) 
puts "#{station1.trains}"




  


   
  

  

  