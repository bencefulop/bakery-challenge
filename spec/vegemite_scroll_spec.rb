# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Bakery::VegemiteScroll do
  subject { described_class.new }

  context 'Pricing'  do
    it 'can tell the price of 3 vegemite scrolls' do
      expect(subject.vegemite_scroll_pricing(3)).to eq(6.99)
    end

    it '4 vegemite scrolls is an invalid amount' do
      expect(subject.vegemite_scroll_pricing(4)).to eq("Exact amount can't be served")
    end

    it 'can tell the price of 5 vegemite scrolls' do
      expect(subject.vegemite_scroll_pricing(5)).to eq(8.99)
    end

    it 'can tell the price of 6 vegemite scrolls' do
      expect(subject.vegemite_scroll_pricing(6)).to eq(13.98)
    end

    it '7 vegemite scrolls is an invalid amount' do
      expect(subject.vegemite_scroll_pricing(7)).to eq("Exact amount can't be served")
    end

    it 'can tell the price of 8 vegemite scrolls' do
      expect(subject.vegemite_scroll_pricing(8)).to eq(15.98)
    end

    it 'can tell the price of 9 vegemite scrolls' do
      expect(subject.vegemite_scroll_pricing(9)).to eq(20.97)
    end

    it 'can tell the price of 10 vegemite scrolls' do
      expect(subject.vegemite_scroll_pricing(10)).to eq(17.98)
    end

    it 'can tell the price of 11 vegemite scrolls' do
      expect(subject.vegemite_scroll_pricing(11)).to eq(22.97)
    end

    it 'can tell the price of 12 vegemite scrolls' do
      expect(subject.vegemite_scroll_pricing(12)).to eq(27.96)
    end

    it 'can tell the price of 13 vegemite scrolls' do
      expect(subject.vegemite_scroll_pricing(13)).to eq(24.97)
    end

    it 'can tell the price of 14 vegemite scrolls' do
      expect(subject.vegemite_scroll_pricing(14)).to eq(29.96)
    end

    it 'can tell the price of 15 vegemite scrolls' do
      expect(subject.vegemite_scroll_pricing(15)).to eq(26.97)
    end
  end
end
