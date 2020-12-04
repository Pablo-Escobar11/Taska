class CargoTrain < Train
  
  attr_reader :type, :type_of_car, cars

  def initialize(type = "cargo")
    super
    @type = type
    @cars = []
  end
  
  def car_add(car)
    if car.type_of_car == "cargo"
      super(car)  
  end
  
  def car_remove(car)
    if car.type_of_car == "cargo"
      super(car)  
  end
end    
