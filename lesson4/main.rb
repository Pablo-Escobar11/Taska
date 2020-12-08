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
puts route1.stations.to_s
route1.delete_station(station5)
puts route1.stations.to_s
route1.add_station(station5)
route1.show_sations

cargo1 = CargoTrain.new(1)
passenger1 = PassengerTrain.new(2)
cargo1.speed_dial(80)
puts "Speed #{cargo1.speed}"
cargo1.stop
puts "speed stop #{cargo1.speed}"
cargo_car1 = CargoCar.new
cargo_car2 = CargoCar.new
cargo1.car_add(cargo_car1)
cargo1.car_add(cargo_car2)
puts cargo1.cars.to_s
cargo1.car_remove(cargo_car2)
passenger1.get_route(route1)
passenger1.previous_station
passenger1.next_station
passenger1.go_to_next_station
puts passenger1.current_station
station5.show_trains('passenger')
