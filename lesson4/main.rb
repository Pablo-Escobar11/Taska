require_relative 'station'
require_relative 'route'
require_relative 'train'
require_relative 'PassengerTrain'
require_relative 'PassengerCar'
require_relative 'CargoTrain'
require_relative 'CargoCar'

def create_train
  puts 'choice train number'
  number = gets.chomp.to_i
  puts 'choose type of train'
  puts '1 - cargo'
  puts '2 - passenger'

  choice2 = gets.chomp.to_i
  case choice2
  when 1
    @trains << CargoTrain.new(number)
    puts "you create cargo train number #{number}"
  when 2
    @trains << PassengerTrain.new(number)
    puts "you create passenger train number #{number}"
  end
end

def create_station
  puts 'choose station name'
  name = gets.chomp
  @stations << Station.new(name)
  puts "you create station #{name}"
end

def add_car
  puts 'choose type of car'
  puts '1 - cargo car'
  puts '2 - passenger car'

  choice3 = gets.chomp.to_i
  case choice3

  when 1
    if @trains.empty?
      puts 'you should create train'
    else
      train = choose_train
      train.car_add(@cars << CargoCar.new, 'cargo')
      puts "you add car #{@cars.last} to train number #{train.number}"
    end

  when 2
    if @trains.empty?
      puts 'you should create train'
    else
      train = choose_train
      train.car_add(@cars << PassengerCar.new, 'passenger')
      puts "you add car #{@cars.last} to train number #{train.number}"
    end
  end
end

def delete_car
  train = choose_train
  train.car_remove(train.cars.last)
  puts "#train has cars #{train.cars}"
end

def create_route
  if @stations.empty?
    puts 'you should create stations'
  else
    puts 'input station index to start station'
    start_station = gets.chomp.to_i
    puts 'input station index to finish station'
    finish_station = gets.chomp.to_i
    @route << Route.new(@stations[start_station], @stations[finish_station])
    puts "you'v got route #{@stations[start_station].name} to #{@stations[finish_station].name}"

  end
end

def add_station_to_route
  station = choose_station
  puts 'input route index'
  route_index = gets.chomp.to_i
  @route[route_index].add_station(station)
  @route << @route[route_index]
  @route[route_index].show_stations
end

def delete_station_from_route
  station = choose_station
  puts 'input route index'
  route_index = gets.chomp.to_i
  @route[route_index].delete_station(station)
  @route << @route[route_index]
  @route[route_index].show_stations
end

def train_take_route
  train = choose_train
  puts 'input index which route you want give to train'
  route_index = gets.chomp.to_i
  train.get_route(@route[route_index])
end

def train_go_to_next_station
  train = choose_train
  train.go_to_next_station
  puts "now your train at the station #{train.current_station}"
end

def train_go_to_previous_station
  train = choose_train
  train.go_to_previos_station
  puts "now your train at the station #{train.current_station}"
end

def show_trains_on_the_station
  puts '1 - show cargo trains'
  puts '2 - show passenger trains'

  choice4 = gets.chomp.to_i
  case choice4

  when 1
    station = choose_station
    station.show_trains('cargo')

  when 2
    station = choose_station
    station.show_trains('passenger')
  end
end

def information_about_trains
  @trains.each { |train| puts "train: #{train.number}" }
end

def information_about_stations
  @stations.each_with_index { |station, index| puts "#{station.name} with #{index}" }
end

def information_about_routs
  @route.each_with_index { |route, index| puts "#{route.start_station.name} - #{route.finish_station.name} with #{index}" }
end

def choose_train
  puts 'which train? (input number)'
  number = gets.chomp.to_i
  train = @trains.detect { |train| train.number == number }
end

def choose_station
  puts 'which station (input name)'
  name = gets.chomp
  station = @stations.detect { |station| station.name == name }
end

def menu
  @stations = []
  @trains = []
  @cars = []
  @route = []

  loop do
    puts '0 - exit'
    puts '1 - create train'
    puts '2 - create station'
    puts '3 - add car to train'
    puts '4 - delete car'
    puts '5 - create the route'
    puts '6 - route add station'
    puts '7 - route delete station'
    puts '8 - train take route'
    puts '9 - go train to next station'
    puts '10 - go train to previous station'
    puts '11 - show trains on the station'

    choice = gets.chomp.to_i
    case choice

    when 0
      puts 'goodbye, you choose exit!!!'
      exit
    when 1
      information_about_trains
      create_train
    when 2
      information_about_stations
      create_station
    when 3
      information_about_trains
      add_car
    when 4
      information_about_trains
      delete_car
    when 5
      information_about_stations
      create_route
    when 6
      information_about_stations
      information_about_routs
      add_station_to_route
    when 7
      information_about_stations
      information_about_routs
      delete_station_from_route
    when 8
      information_about_trains
      information_about_routs
      train_take_route
    when 9
      information_about_trains
      train_go_to_next_station
    when 10
      information_about_trains
      train_go_to_previous_station
    when 11
      information_about_stations
      information_about_trains
      show_trains_on_the_station

    end
  end
end

menu
