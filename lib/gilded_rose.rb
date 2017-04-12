require_relative './aged_brie.rb'
require_relative './Sulfras.rb'
require_relative './conjured.rb'
require_relative './back_stage.rb'
require_relative './normal_item.rb'

class GildedRose
  attr_reader :name, :days_remaining, :quality

  def initialize(name:, days_remaining:, quality:)
    @item = {
      "Aged Brie" => AgedBrie,
      "Sulfuras, Hand of Ragnaros" => Sulfuras,
      "Backstage passes to a TAFKAL80ETC concert" => BackStage,
      "Normal Item" => NormalItem,
      "Conjured Mana Cake" => Conjured,
    }[name].new(name, days_remaining, quality)
  end



  def tick
    @item.tick
  end

  def name
    @item.name
  end
  
  def quality
    @item.quality
  end
  def days_remaining
    @item.days_remaining
  end


end
