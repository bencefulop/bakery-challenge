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
      total_price = pieces / 9 * PACKAGE_OF_9
      package_9_count = pieces / 9

      {
        total: "#{pieces} CF $#{total_price}",
        consists_of: "#{package_9_count} X 9 $16.99"
      }
    end

    def show_price_for_1_remainder(pieces)
      total_price = (((pieces / 9 - 1) * PACKAGE_OF_9) + (PACKAGE_OF_5 * 2)).round(2)

      package_5_count = 2
      package_9_count = pieces / 9 - 1

      {
        total: "#{pieces} CF $#{total_price}",
        consists_of: "#{package_9_count} X 9 $16.99\n#{package_5_count} X 5 $9.95"
      }
    end

    def show_price_for_2_remainder(pieces)
      total_price = (((pieces / 9 - 1) * PACKAGE_OF_9) + (PACKAGE_OF_5 + PACKAGE_OF_3 * 2)).round(2)

      package_3_count = 2
      package_5_count = 1
      package_9_count = pieces / 9 - 1

      {
        total: "#{pieces} CF $#{total_price}",
        consists_of: "#{package_9_count} X 9 $16.99\n#{package_5_count} X 5 $9.95\n#{package_3_count} X 3 $5.95"
      }
    end

    def show_price_for_3_remainder(pieces)
      total_price = ((pieces / 9 * PACKAGE_OF_9) + PACKAGE_OF_3).round(2)

      package_3_count = 1
      package_9_count = pieces / 9

      {
        total: "#{pieces} CF $#{total_price}",
        consists_of: "#{package_9_count} X 9 $16.99\n#{package_3_count} X 3 $5.95"
      }
    end

    def show_price_for_4_remainder(pieces)
      total_price = (((pieces / 9 - 1) * PACKAGE_OF_9) + (PACKAGE_OF_3 + PACKAGE_OF_5 * 2)).round(2)

      package_3_count = 1
      package_5_count = 2
      package_9_count = pieces / 9 - 1

      {
        total: "#{pieces} CF $#{total_price}",
        consists_of: "#{package_9_count} X 9 $16.99\n#{package_5_count} X 5 $9.95\n#{package_3_count} X 3 $5.95"
      }
    end

    def show_price_for_5_remainder(pieces)
      total_price = ((pieces / 9 * PACKAGE_OF_9) + PACKAGE_OF_5).round(2)

      package_5_count = 1
      package_9_count = pieces / 9

      {
        total: "#{pieces} CF $#{total_price}",
        consists_of: "#{package_9_count} X 9 $16.99\n#{package_5_count} X 5 $9.95"
      }
    end

    def show_price_for_6_remainder(pieces)
      total_price = ((pieces / 9 * PACKAGE_OF_9) + PACKAGE_OF_3 * 2).round(2)

      package_3_count = 2
      package_9_count = pieces / 9

      {
        total: "#{pieces} CF $#{total_price}",
        consists_of: "#{package_9_count} X 9 $16.99\n#{package_3_count} X 3 $5.95"
      }
    end

    def show_price_for_7_remainder(pieces)
      total_price = (((pieces / 9 - 1) * PACKAGE_OF_9) + ((PACKAGE_OF_3 * 2) + (PACKAGE_OF_5 * 2))).round(2)

      package_3_count = 2
      package_5_count = 2
      package_9_count = pieces / 9 - 1

      {
        total: "#{pieces} CF $#{total_price}",
        consists_of: "#{package_9_count} X 9 $16.99\n#{package_5_count} X 5 $9.95\n#{package_3_count} X 3 $5.95"
      }
    end

    def show_price_for_8_remainder(pieces)
      total_price = ((pieces / 9 * PACKAGE_OF_9) + PACKAGE_OF_5 + PACKAGE_OF_3).round(2)

      package_3_count = 1
      package_5_count = 1
      package_9_count = pieces / 9

      {
        total: "#{pieces} CF $#{total_price}",
        consists_of: "#{package_9_count} X 9 $16.99\n#{package_5_count} X 5 $9.95\n#{package_3_count} X 3 $5.95"
      }
    end

    def invalid_amount
      { total: "Error: Croissant exact amount can't be served" }
    end
  end
end
