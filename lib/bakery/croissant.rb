module Bakery
  class Croissant
    PACKAGE_OF_3 = 5.95
    PACKAGE_OF_5 = 9.95
    PACKAGE_OF_9 = 16.99
    INVALID_AMOUNTS = [1, 2, 4, 7].freeze

    def croissant_pricing(pieces)
      return invalid_amount if INVALID_AMOUNTS.include?(pieces)

      send("show_price_for_#{pieces % 9}_remainder", pieces)
    end

    private

    def show_price_for_0_remainder(pieces)
      pieces / 9 * PACKAGE_OF_9
    end

    def show_price_for_1_remainder(pieces)
      (((pieces / 9 - 1) * PACKAGE_OF_9) + (PACKAGE_OF_5 * 2)).round(2)
    end

    def show_price_for_2_remainder(pieces)
      (((pieces / 9 - 1) * PACKAGE_OF_9) + (PACKAGE_OF_5 + PACKAGE_OF_3 * 2)).round(2)
    end

    def show_price_for_3_remainder(pieces)
      ((pieces / 9 * PACKAGE_OF_9) + PACKAGE_OF_3).round(2)
    end

    def show_price_for_4_remainder(pieces)
      (((pieces / 9 - 1) * PACKAGE_OF_9) + (PACKAGE_OF_3 + PACKAGE_OF_5 * 2)).round(2)
    end

    def show_price_for_5_remainder(pieces)
      ((pieces / 9 * PACKAGE_OF_9) + PACKAGE_OF_5).round(2)
    end

    def show_price_for_6_remainder(pieces)
      ((pieces / 9 * PACKAGE_OF_9) + PACKAGE_OF_3 * 2).round(2)
    end

    def show_price_for_7_remainder(pieces)
      (((pieces / 9 - 1) * PACKAGE_OF_9) + ((PACKAGE_OF_3 * 2) + (PACKAGE_OF_5 * 2))).round(2)
    end

    def show_price_for_8_remainder(pieces)
      ((pieces / 9 * PACKAGE_OF_9) + PACKAGE_OF_5 + PACKAGE_OF_3).round(2)
    end

    def invalid_amount
      "Exact amount can't be served"
    end
  end
end
