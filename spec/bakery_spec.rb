# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Bakery::BakeryShop do
  subject { described_class.new }

  context 'Vegemite Scrolls'  do
    it 'can tell the price of 3 vegemite scrolls' do
      expect(subject.vegemite_scroll(3)).to eq(6.99)
    end

    it 'can tell the price of 5 vegemite scrolls' do
      expect(subject.vegemite_scroll(5)).to eq(8.99)
    end

    it "can't provide the price for 4 vegemite scrolls" do
      expect(subject.vegemite_scroll(4)).to eq(8.99)
    end
  end
end
