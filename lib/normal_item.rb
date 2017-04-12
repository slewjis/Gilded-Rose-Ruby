require_relative './item.rb'

class NormalItem < Item
  def tick
    @days_remaining -=1
    @quality -=1
    @quality -=1 if @days_remaining < 0
    if @quality > 50
      @quality = 50
    end
    if @quality <0
      @quality = 0
    end

  end
end
