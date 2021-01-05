class CargoTrain < Train
  attr_reader :type, :type_of_car, :cars

  def initialize(number, type = 'cargo')
    super(number)
    @type = type
  end
end
