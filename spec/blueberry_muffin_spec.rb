# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Bakery::BlueberryMuffin do
  subject { described_class.new }

  context 'Pricing'  do
    it 'can tell the price of 2 blueberry muffins' do
      expect(subject.blueberry_muffin_pricing(2)).to eq(9.95)
    end
  
    it '3 blueberry muffins is an invalid amount' do
      expect(subject.blueberry_muffin_pricing(3)).to eq("Exact amount can't be served")
    end

    it 'can tell the price of 4 blueberry muffins' do
      expect(subject.blueberry_muffin_pricing(4)).to eq(19.9)
    end

    it 'can tell the price of 5 blueberry muffins' do
      expect(subject.blueberry_muffin_pricing(5)).to eq(16.95)
    end

    it 'can tell the price of 6 blueberry muffins' do
      expect(subject.blueberry_muffin_pricing(6)).to eq(29.85)
    end

    it 'can tell the price of 7 blueberry muffins' do
      expect(subject.blueberry_muffin_pricing(7)).to eq(26.9)
    end

    it 'can tell the price of 8 blueberry muffins' do
      expect(subject.blueberry_muffin_pricing(8)).to eq(24.95)
    end

    it 'can tell the price of 9 blueberry muffins' do
      expect(subject.blueberry_muffin_pricing(9)).to eq(36.85)
    end

    it 'can tell the price of 10 blueberry muffins' do
      expect(subject.blueberry_muffin_pricing(10)).to eq(33.9)
    end

    it 'can tell the price of 11 blueberry muffins' do
      expect(subject.blueberry_muffin_pricing(11)).to eq(46.8)
    end

    it 'can tell the price of 12 blueberry muffins' do
      expect(subject.blueberry_muffin_pricing(12)).to eq(44.85)
    end

    it 'can tell the price of 13 blueberry muffins' do
      expect(subject.blueberry_muffin_pricing(13)).to eq(41.9)
    end

    it 'can tell the price of 14 blueberry muffins' do
      expect(subject.blueberry_muffin_pricing(14)).to eq(53.8)
    end


    it 'can tell the price of 15 blueberry muffins' do
      expect(subject.blueberry_muffin_pricing(15)).to eq(51.85)
    end

    it 'can tell the price of 16 blueberry muffins' do
      expect(subject.blueberry_muffin_pricing(16)).to eq(49.9)
    end

    it 'can tell the price of 17 blueberry muffins' do
      expect(subject.blueberry_muffin_pricing(17)).to eq(61.8)
    end
 
    it 'can tell the price of 18 blueberry muffins' do
      expect(subject.blueberry_muffin_pricing(18)).to eq(59.85)
    end

    it 'can tell the price of 19 blueberry muffins' do
      expect(subject.blueberry_muffin_pricing(19)).to eq(71.75)
    end

    it 'can tell the price of 20 blueberry muffins' do
      expect(subject.blueberry_muffin_pricing(20)).to eq(69.8)
    end

    it 'can tell the price of 21 blueberry muffins' do
      expect(subject.blueberry_muffin_pricing(21)).to eq(66.85)
    end

    it 'can tell the price of 22 blueberry muffins' do
      expect(subject.blueberry_muffin_pricing(22)).to eq(79.75)
    end

    it 'can tell the price of 23 blueberry muffins' do
      expect(subject.blueberry_muffin_pricing(23)).to eq(76.8)
    end
  end
end
