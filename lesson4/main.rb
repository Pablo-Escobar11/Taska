require_relative 'station'
require_relative 'route'
require_relative 'train'
require_relative 'PassengerTrain'
require_relative 'PassengerCar'
require_relative 'CargoTrain'
require_relative 'CargoCar'

stations = []
trains = []
cars = []
route = []

while true
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

  when 1
    puts 'you choose create train'
    puts 'choice train number'
    number = gets.chomp.to_i
    puts 'choose type of train'
    puts '1 - cargo'
    puts '2 - passenger'

    choice2 = gets.chomp.to_i
    case choice2
    when 1
      puts 'cargo'
      trains << CargoTrain.new(number)
      puts "you create cargo train number #{number}"
    when 2
      puts 'passenger'
      trains << PassengerTrain.new(number)
      puts "you create passenger train number #{number}"
    end

  when 2
    puts 'you choose create station'
    puts 'choose station name'
    name = gets.chomp
    stations << Station.new(name)
    puts "you create station #{name}"

  when 3
    puts 'you choose add car to train'
    puts 'choose type of car'
    puts '1 - cargo car'
    puts '2 - passenger car'

    choice3 = gets.chomp.to_i
    case choice3

    when 1
      if trains.empty?
        puts 'you should create train'
      else
        puts 'which train? (input number)'
        number = gets.chomp.to_i
        train = trains.detect { |train| train.number == number }
        train.car_add(cars << CargoCar.new, 'cargo')
        puts "you add car #{cars.last} to train number #{train.number}"
      end

    when 2
      if trains.empty?
        puts 'you should create train'
      else
        puts 'which train? (input number)'
        number = gets.chomp.to_i
        train = trains.detect { |train| train.number == number }
        train.car_add(PassengerCar.new, 'passenger')
        puts "you add car #{cars.last} to train number #{train.number}"
      end
    end

  when 4
    puts 'you choose delete car'
    puts 'which train? (input number)'
    number = gets.chomp.to_i
    train = trains.detect { |train| train.number == number }
    train.car_remove(train.cars.last)

  when 5
    puts 'you choose create the route'
    if stations.empty?
      puts 'you should create stations'
    else
      route1 = Route.new(stations.first, stations.last)
    end

  when 6
    puts 'you choose add station to route'
    puts 'which station (input name)'
    name = gets.chomp
    station = stations.detect { |station| station.name == name }
    route1.add_station(station)
    route << route1
    route1.show_stations

  when 7
    puts 'you choose delete station from route'
    puts 'which station (input name)'
    name = gets.chomp
    station = stations.detect { |station| station.name == name }
    route1.delete_station(station)
    route << route1
    route1.show_stations

  when 8
    puts 'you choose train which take route'
    puts 'which train? (input number)'
    number = gets.chomp.to_i
    train = trains.detect { |train| train.number == number }
    train.get_route(route1)

  when 9
    puts 'you choose go to next station'
    puts 'which train? (input number)'
    number = gets.chomp.to_i
    train = trains.detect { |train| train.number == number }
    train.go_to_next_station
    puts "now your train at the station #{train.current_station}"

  when 10
    puts 'you choose go to previous station'
    puts 'which train? (input number)'
    number = gets.chomp.to_i
    train = trains.detect { |train| train.number == number }
    train.go_to_previous_station
    puts "now your train at the station #{train.current_station}"

  when 11
    puts 'you choose show trains on the station'
    puts '1 - show gargo trains'
    puts '2 - show passenger trains'
    puts 'input station name'
    name = gets.chomp.to_i

    choice4 = gets.chomp.to_i
    case choice4

    when 1
      station = stations.detect { |station| station.name == name }
      station.show_trains('cargo')

    when 2
      station = stations.detect { |station| station.name == name }
      station.show_trains('passenger')
    end

  when 0
    puts 'goodbye, you choose exit'
    exit
  end
end

