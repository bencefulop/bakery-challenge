# frozen_string_literal: true

module Bakery
  class BakeryShop
    attr_reader :vs5, :mb11, :cf

    def initialize
      @vs5 = VegemiteScroll.new
      @mb11 = BlueberryMuffin.new
      @cf = Croissant.new
    end

    def get_price_of_vegemite_scroll(pieces)
      @vs5.vegemite_scroll_pricing(pieces)
    end
  end
end
