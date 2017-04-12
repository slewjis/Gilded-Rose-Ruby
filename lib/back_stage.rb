require_relative './item.rb'
class BackStage < Item
  def tick
    if @days_remaining <= 0
      @quality = 0
    elsif
      @days_remaining <6
      @quality +=3
    elsif @days_remaining <11
      @quality += 2
    else
      @quality +=1
    end
    @quality = 50 if @quality > 50
    @days_remaining -= 1
  end
end
