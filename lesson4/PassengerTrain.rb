class PassengerTrain < Train
  attr_reader :cars, :type, :type_of_car

  def initialize(number, type = 'passenger')
    super
  end

  def car_add(car)
    super(car) if car.type_of_car == 'passengers'
  end

  def car_remove(car)
    super(car) if car.type_of_car == 'passengers'
  end
end
