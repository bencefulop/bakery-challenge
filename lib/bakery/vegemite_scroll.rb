module Bakery
  class VegemiteScroll
    VEGEMITE_SCROLL_3 = 6.99
    VEGEMITE_SCROLL_5 = 8.99
    
    def vegemite_scroll_pricing(number)
      case number
      when 1 then invalid_amount
      when 2 then invalid_amount
      when 3 then VEGEMITE_SCROLL_3
      when 4 then invalid_amount
      when 5 then VEGEMITE_SCROLL_5
      when 6 then VEGEMITE_SCROLL_3 * 2
      when 7 then invalid_amount
      when 8 then VEGEMITE_SCROLL_3 + VEGEMITE_SCROLL_5
      when 9 then VEGEMITE_SCROLL_3 * 3
      when 10 then VEGEMITE_SCROLL_5 * 2
      end
    end

    private 

    def invalid_amount
      "Exact amount can't be served"
    end
  end
end
