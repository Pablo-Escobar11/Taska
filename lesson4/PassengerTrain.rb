class PassengerTrain < Train

  attr_reader :cars, :type, :type_of_car
  
  def initialize(type = "passenger")
    super
    @type = type
    @cars = []
  end

  def car_add(car)
    if car.type_of_car == "passengers"
      super(car)  
  end
  
  def car_remove(car)
    if car.type_of_car == "passengers"
      super(car)  
  end
end



  
  