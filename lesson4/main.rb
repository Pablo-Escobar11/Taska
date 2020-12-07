require_relative 'station'
require_relative 'route'
require_relative 'train'
require_relative 'PassengerTrain'
require_relative 'PassengerCar'
require_relative 'CargoTrain'
require_relative 'CargoCar'

station1 = Station.new('Orsha-center')
station7 = Station.new('Lepel')
station5 = Station.new('Chashniki')

route1 = Route.new(station1, station7)
route1.add_station(station5)
puts "#{route1.stations}"
route1.delete_station(station5)
puts "#{route1.stations}"
route1.add_station(station5)
route1.show_sations

cargo1 = CargoTrain.new(1)
passenger1 = PassengerTrain.new(2)
cargo1.speed_dial(80)
puts "Speed #{cargo1.speed}"
cargo1.stop
puts "speed stop #{cargo1.speed}"
station1.show_trains('cargo')
cargo_car1 = CargoCar.new
cargo1.car_add(cargo_car1)

