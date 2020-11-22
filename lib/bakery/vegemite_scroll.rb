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
      total_price = pieces / 5 * PACKAGE_OF_5
      package_5_count = pieces / 5

      {
        total: "#{pieces} VS5 $#{total_price}",
        consists_of: "#{package_5_count} X 5 $8.99"
      }
    end

    def show_price_for_1_remainder(pieces)
      total_price = ((pieces / 5 - 1) * PACKAGE_OF_5) + (PACKAGE_OF_3 * 2)
      package_5_count = (pieces / 5 - 1)
      package_3_count = 2

      {
        total: "#{pieces} VS5 $#{total_price}",
        consists_of: "#{package_5_count} X 5 $8.99\n#{package_3_count} X 3 $6.99"
      }
    end

    def show_price_for_2_remainder(pieces)
      total_price = ((pieces - 12) / 5 * PACKAGE_OF_5) + (4 * PACKAGE_OF_3)
      package_5_count = (pieces - 12) / 5
      package_3_count = 4

      {
        total: "#{pieces} VS5 $#{total_price}",
        consists_of: "#{package_5_count} X 5 $8.99\n#{package_3_count} X 3 $6.99"
      }
    end

    def show_price_for_3_remainder(pieces)
      total_price = (pieces / 5 * PACKAGE_OF_5) + PACKAGE_OF_3
      package_5_count = pieces / 5
      package_3_count = 1

      {
        total: "#{pieces} VS5 $#{total_price}",
        consists_of: "#{package_5_count} X 5 $8.99\n#{package_3_count} X 3 $6.99"
      }
    end

    def show_price_for_4_remainder(pieces)
      total_price = ((pieces - 9) / 5 * PACKAGE_OF_5) + (3 * PACKAGE_OF_3)
      package_5_count = (pieces - 9) / 5
      package_3_count = 3

      {
        total: "#{pieces} VS5 $#{total_price}",
        consists_of: "#{package_5_count} X 5 $8.99\n#{package_3_count} X 3 $6.99"
      }
    end

    def invalid_amount
      { total: "Error: Vegemite Scroll exact amount can't be served" }
    end
  end
end
