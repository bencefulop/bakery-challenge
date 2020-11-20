# frozen_string_literal: true

module Bakery
  class BakeryShop
    def vegemite_scroll(number)
      case number
      when 3 then 6.99
      when 5 then 8.99
      end
    end
  end
end
