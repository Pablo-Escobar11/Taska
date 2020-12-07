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

cargo1 = CargoTrain.new(1)
station1.get_train(cargo1)
station1.show_trains('cargo')
