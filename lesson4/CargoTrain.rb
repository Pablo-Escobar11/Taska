class CargoTrain < Train
  attr_reader :type, :type_of_car, :cars

  def initialize(number, type = 'cargo')
    super
  end

  def car_add(car)
    super(car) if car.type_of_car == 'cargo'
  end

  def car_remove(car)
    super(car) if car.type_of_car == 'cargo'
  end
end

