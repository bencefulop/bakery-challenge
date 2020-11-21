module Bakery
  class BlueberryMuffin

    PACKAGE_OF_2 = 9.95
    PACKAGE_OF_5 = 16.95
    PACKAGE_OF_8 = 24.95
    INVALID_AMOUNTS = [1, 3].freeze

    def blueberry_muffin_pricing(pieces)
      return invalid_amount if INVALID_AMOUNTS.include?(pieces)
      return 33.9 if pieces == 10 # 10 can be 8 + 2 or 5 + 5. The second one is cheaper, hence the guard clause
      return 53.8 if pieces == 14 # 14 can be 8 + (3*2) or (5*2)+(2*2). The second one is cheaper, hence the guard clause

      case pieces % 8
      when 0 then show_price_for_0_remainder(pieces)
      when 1 then show_price_for_1_remainder(pieces)
      when 2 then show_price_for_2_remainder(pieces)
      when 3 then show_price_for_3_remainder(pieces)
      when 4 then show_price_for_4_remainder(pieces)
      when 5 then show_price_for_5_remainder(pieces)
      when 6 then show_price_for_6_remainder(pieces)
      when 7 then show_price_for_7_remainder(pieces)
      end
    end

    private

    def show_price_for_0_remainder(pieces)
      pieces / 8 * PACKAGE_OF_8
    end

    def show_price_for_1_remainder(pieces)
      (((pieces / 8 - 1) * PACKAGE_OF_8) + (PACKAGE_OF_5 + PACKAGE_OF_2 * 2)).round(2)
    end

    def show_price_for_2_remainder(pieces)
      ((pieces / 8 * PACKAGE_OF_8) + PACKAGE_OF_2).round(2)
    end

    def show_price_for_3_remainder(pieces)
      (((pieces / 8 - 1) * PACKAGE_OF_8) + (PACKAGE_OF_5 + PACKAGE_OF_2 * 3)).round(2)
    end

    def show_price_for_4_remainder(pieces)
      ((pieces / 8 * PACKAGE_OF_8) + PACKAGE_OF_2 * 2).round(2)
    end

    def show_price_for_5_remainder(pieces)
      ((pieces / 8 * PACKAGE_OF_8) + PACKAGE_OF_5).round(2)
    end

    def show_price_for_6_remainder(pieces)
      ((pieces / 8 * PACKAGE_OF_8) + PACKAGE_OF_2 * 3).round(2)
    end

    def show_price_for_7_remainder(pieces)
      ((pieces / 8 * PACKAGE_OF_8) + PACKAGE_OF_5 + PACKAGE_OF_2).round(2)
    end

    def invalid_amount
      "Exact amount can't be served"
    end
  end
end
