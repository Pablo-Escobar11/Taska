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
    puts 'choose another station' if @trains.empty?
    trains.map do |train|
      if  train.type == type
        puts "#{type} number is #{train.number}"
      else
        puts 'you should choose another type'
      end
    end
  end
end
