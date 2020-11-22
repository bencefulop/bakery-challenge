module Bakery
  class BlueberryMuffin
    PACKAGE_OF_2 = 9.95
    PACKAGE_OF_5 = 16.95
    PACKAGE_OF_8 = 24.95
    INVALID_AMOUNTS = [1, 3].freeze

    def blueberry_muffin_pricing(pieces)
      return invalid_amount if INVALID_AMOUNTS.include?(pieces)

      send("show_price_for_#{pieces % 8}_remainder", pieces)
    end

    private

    def show_price_for_0_remainder(pieces)
      total_price = pieces / 8 * PACKAGE_OF_8
      package_8_count = pieces / 8

      {
        total: "#{pieces} MB11 $#{total_price}",
        consists_of: "#{package_8_count} X 8 $24.95"
      }
    end

    def show_price_for_1_remainder(pieces)
      total_price = (((pieces / 8 - 1) * PACKAGE_OF_8) + (PACKAGE_OF_5 + PACKAGE_OF_2 * 2)).round(2)
      package_2_count = 2
      package_5_count = 1
      package_8_count = pieces / 8 - 1

      {
        total: "#{pieces} MB11 $#{total_price}",
        consists_of: "#{package_8_count} X 8 $24.95\n#{package_5_count} X 5 $16.95\n#{package_2_count} X 2 $9.95"
      }
    end

    def show_price_for_2_remainder(pieces)
      total_price = ((pieces / 8 * PACKAGE_OF_8) + PACKAGE_OF_2).round(2)
      package_2_count = 1
      package_8_count = pieces / 8

      {
        total: "#{pieces} MB11 $#{total_price}",
        consists_of: "#{package_8_count} X 8 $24.95\n#{package_2_count} X 2 $9.95"
      }
    end

    def show_price_for_3_remainder(pieces)
      total_price = (((pieces / 8 - 1) * PACKAGE_OF_8) + (PACKAGE_OF_5 + PACKAGE_OF_2 * 3)).round(2)
      package_2_count = 3
      package_5_count = 1
      package_8_count = pieces / 8 - 1

      {
        total: "#{pieces} MB11 $#{total_price}",
        consists_of: "#{package_8_count} X 8 $24.95\n#{package_5_count} X 5 $16.95\n#{package_2_count} X 2 $9.95"
      }
    end

    def show_price_for_4_remainder(pieces)
      total_price = ((pieces / 8 * PACKAGE_OF_8) + PACKAGE_OF_2 * 2).round(2)
      package_2_count = 2
      package_8_count = pieces / 8

      {
        total: "#{pieces} MB11 $#{total_price}",
        consists_of: "#{package_8_count} X 8 $24.95\n#{package_2_count} X 2 $9.95"
      }
    end

    def show_price_for_5_remainder(pieces)
      total_price = ((pieces / 8 * PACKAGE_OF_8) + PACKAGE_OF_5).round(2)
      package_5_count = 1
      package_8_count = pieces / 8

      {
        total: "#{pieces} MB11 $#{total_price}",
        consists_of: "#{package_8_count} X 8 $24.95\n#{package_5_count} X 5 $16.95"
      }
    end

    def show_price_for_6_remainder(pieces)
      total_price = ((pieces / 8 * PACKAGE_OF_8) + PACKAGE_OF_2 * 3).round(2)
      package_2_count = 3
      package_8_count = pieces / 8

      {
        total: "#{pieces} MB11 $#{total_price}",
        consists_of: "#{package_8_count} X 8 $24.95\n#{package_2_count} X 2 $9.95"
      }
    end

    def show_price_for_7_remainder(pieces)
      total_price = ((pieces / 8 * PACKAGE_OF_8) + PACKAGE_OF_5 + PACKAGE_OF_2).round(2)
      package_2_count = 1
      package_5_count = 1
      package_8_count = pieces / 8

      {
        total: "#{pieces} MB11 $#{total_price}",
        consists_of: "#{package_8_count} X 8 $24.95\n#{package_5_count} X 5 $16.95\n#{package_2_count} X 2 $9.95"
      }
    end

    def invalid_amount
      { total: "Exact amount can't be served" }
    end
  end
end
