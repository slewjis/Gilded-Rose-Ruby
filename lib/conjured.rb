require_relative './item.rb'
class Conjured < Item
  def tick
    @quality -= 2
    @quality -= 2 if @days_remaining<=0
    @quality = 0 if @quality <0
    @quality = 50 if @quality >50
    @days_remaining -=1
  end
end
