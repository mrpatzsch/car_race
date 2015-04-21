require_relative 'car'

class Race
  attr_reader :cars
  def initialize 
    @cars = []
    race
  end

  def winner
  puts  @cars.sort_by(&:speed).last
  end

  def loser
  puts  @cars.sort_by(&:speed).first
  end

private
  def random_speed
    (rand * 100).round
  end

  def race
    @cars << Car.new
    @cars << Car.new

    @cars.first.accelerate(random_speed)
    @cars.last.accelerate(random_speed)
  end
end

race = Race.new
race.winner
race.loser

