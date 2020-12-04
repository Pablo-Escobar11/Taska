class Station
  
  attr_reader :name, :trains
  
  def initialize(name)
    @name = name
    @trains = []
  end  
  
  def get_train(train)
    @trains << train
  end
    
  def send_train(train)
    @trains.delete(train)  
  end
    
  def show_trains(type)
    trains.map {|train| puts "#{type} number is #{train.number}" if train.type == type} 
  end 
end
