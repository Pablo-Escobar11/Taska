class PassengerTrain < Train
  attr_reader :cars, :type, :type_of_car

  def initialize(number, type = 'passenger')
    super(number)
    @type = type
  end
end
