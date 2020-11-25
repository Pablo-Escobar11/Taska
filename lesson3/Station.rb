class Station
  attr_reader :name, :trains

  def initialize(name)
    @name = name
  end  

  def get_tarin(train)
    @trains = []
    @trains << train
    puts "#{@trains}"
  end
  
  def send_train(train)
    trains.delete(train)
    puts @trains
    
  end
  
  def show_trains(type = false)
    trains.each do |train|
    unless type
      trains.each {|train| puts train.number if train.type == "passengers"}
    else
      trains.each{|train| puts "Cargo train #{train.number}"}  
    end
    end
  end    
end

class Route
  attr_reader :start_station, :finish_station, :stations
  
  def initialize(start_station, finish_station)
    @start_station = start_station
    @finish_station = finish_station
  end
  
  def add_stations(station)
    @stations = []
    @stations << start_station
    @stations << finish_station
    @stations.insert(1, station)
  end
end     





class Train
    
  attr_reader :number 
  attr_reader :type
  attr_accessor :car_count
    
  def initialize(number, type, car_count)
    @number = number
    @type = type
    @car_count = car_count
  end  
end
  
  station1 = Station.new("Orsha-center")
  station7 = Station.new("Lepel")
  station5 = Station.new("Chashniki")

  train1 = Train.new(1, "passengers", 2)
  train2 = Train.new(2, "cargo", 3)

  station1.get_tarin(train1)
  station1.get_tarin(train2)

  station1.show_trains("passengers")
  station1.show_trains("cargo")

  station1.send_train(train1)
  


  


   
  

  

  