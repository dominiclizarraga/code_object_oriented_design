# 3rd chapter of the book that covers managing dependencies

# Because well desgined objects hace a single responsability, their very nature requires that they collaborate to accomplish complex tasks. This collaboration and knowing each other creates dependency.

class Gear

  attr_reader :chainring, :cog, :rim, :tire

  def initialize(chainring, cog, rim, tire)
    @chainring = chainring
    @cog = cog
    @wheel = wheel
  end

  def ratio
    chainring / cog.to_f
  end

  def gear_inches
    ratio * Wheel.new(rim, tire).diameter
  end

end

class Wheel

  attr_reader :rim, :tire

  def initialize(rim, tire)
    @rim = rim
    @tire = tire
  end

  def diameter
    rim + (tire * 2)
  end

end

puts Gear.new(52, 11, 26, 1.5).gear_inches
