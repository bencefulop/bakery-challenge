module Bakery
  class VegemiteScroll
    PACKAGE_OF_3 = 6.99
    PACKAGE_OF_5 = 8.99
    INVALID_AMOUNTS = [1, 2, 4, 7].freeze

    def vegemite_scroll_pricing(pieces)
      return invalid_amount if INVALID_AMOUNTS.include?(pieces)

      send("show_price_for_#{pieces % 5}_remainder", pieces)
    end

    private

    def show_price_for_0_remainder(pieces)
      pieces / 5 * PACKAGE_OF_5
    end

    def show_price_for_1_remainder(pieces)
      ((pieces / 5 - 1) * PACKAGE_OF_5) + (pieces - ((pieces / 5 - 1) * 5)) / 3 * PACKAGE_OF_3
    end

    def show_price_for_2_remainder(pieces)
      ((pieces - 12) / 5 * PACKAGE_OF_5) + (4 * PACKAGE_OF_3)
    end

    def show_price_for_3_remainder(pieces)
      (pieces / 5 * PACKAGE_OF_5) + PACKAGE_OF_3
    end

    def show_price_for_4_remainder(pieces)
      ((pieces - 9) / 5 * PACKAGE_OF_5) + (3 * PACKAGE_OF_3)
    end

    def invalid_amount
      "Exact amount can't be served"
    end
  end
end
