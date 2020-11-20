# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Bakery::BakeryShop do
  subject { described_class.new }
 
  context "has 3 products" do
    it "sells Vegemite Scrolls" do
      expect(subject).to respond_to(:vs5)
    end

    it "sells Blueberry Muffins" do
      expect(subject).to respond_to(:mb11)
    end

    it "sells Croissants" do
      expect(subject).to respond_to(:cf)
    end
  end

  context 'Vegemite Scrolls'  do
    it 'can tell the price of 3 vegemite scrolls' do
      expect(subject.vegemite_scroll(3)).to eq(6.99)
    end

    it 'can tell the price of 5 vegemite scrolls' do
      expect(subject.vegemite_scroll(5)).to eq(8.99)
    end

    it "4 vegemite scrolls is an invalid amount" do
      expect(subject.vegemite_scroll(4)).to eq("Exact amount can't be served")
    end

    it "can tell the price of 10 vegemite scrolls" do
      expect(subject.vegemite_scroll(10)).to eq(17.98)
    end
  end
end
