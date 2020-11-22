# frozen_string_literal: true

module Bakery
  class BakeryShop
    attr_reader :vs5, :mb11, :cf

    def initialize
      @vs5 = VegemiteScroll.new
      @mb11 = BlueberryMuffin.new
      @cf = Croissant.new
    end

    def get_price_of_vs5(pieces)
      @vs5.vegemite_scroll_pricing(pieces)
    end

    def get_price_of_mb11(pieces)
      @mb11.blueberry_muffin_pricing(pieces)
    end

    def get_price_of_cf(pieces)
      @cf.croissant_pricing(pieces)
    end

    def load_orders(orders_file)
      File.readlines(orders_file)
          .map { |order| Array(order.split(' ')) }
    end

    def purchase_products(orders)
      orders.each do |order|
        puts send("get_price_of_#{order[1].downcase}", order[0].to_i)[:total]
        puts send("get_price_of_#{order[1].downcase}", order[0].to_i)[:consists_of]
        puts ''
      end
    end
  end
end
