class PassengerCar
  attr_reader :type_of_car

  def initialize(type_of_car = 'passenger')
    @type_of_car = type_of_car
  end
end
