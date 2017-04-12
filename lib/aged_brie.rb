require_relative './item.rb'
class AgedBrie < Item
  def tick
      @days_remaining -= 1
      @quality += 1 if @quality < 50
      @quality += 1 if @days_remaining <0
      @quality = 50 if @quality > 50

  end
end
