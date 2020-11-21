module Bakery
  class VegemiteScroll
    PACKAGE_OF_3 = 6.99
    PACKAGE_OF_5 = 8.99
    INVALID_AMOUNTS = [1, 2, 4, 7].freeze

    def vegemite_scroll_pricing(pieces)
      return invalid_amount if INVALID_AMOUNTS.include?(pieces)

      case pieces % 5
      when 0 then show_price_for_0_remainder(pieces)
      when 1 then show_price_for_1_remainder(pieces)
      when 2 then show_price_for_2_remainder(pieces)
      when 3 then show_price_for_3_remainder(pieces)
      when 4 then show_price_for_4_remainder(pieces)
      end
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
