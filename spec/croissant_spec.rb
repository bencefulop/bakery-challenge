# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Bakery::Croissant do
  subject { described_class.new }

  context 'Pricing'  do
    it '2 croissants is an invalid amount' do
      expect(subject.croissant_pricing(2)).to eq("Exact amount can't be served")
    end

    it 'can tell the price of 3 croissants' do
      expect(subject.croissant_pricing(3)).to eq(5.95)
    end

    it '4 croissants is an invalid amount' do
      expect(subject.croissant_pricing(4)).to eq("Exact amount can't be served")
    end

    it 'can tell the price of 5 croissants' do
      expect(subject.croissant_pricing(5)).to eq(9.95)
    end

    it 'can tell the price of 6 croissants' do
      expect(subject.croissant_pricing(6)).to eq(11.9)
    end

    it '7 croissants is an invalid amount' do
      expect(subject.croissant_pricing(7)).to eq("Exact amount can't be served")
    end

    it 'can tell the price of 8 croissants' do
      expect(subject.croissant_pricing(8)).to eq(15.9)
    end

    it 'can tell the price of 9 croissants' do
      expect(subject.croissant_pricing(9)).to eq(16.99)
    end

    it 'can tell the price of 10 croissants' do
      expect(subject.croissant_pricing(10)).to eq(19.9)
    end

    it 'can tell the price of 11 croissants' do
      expect(subject.croissant_pricing(11)).to eq(21.85)
    end

    it 'can tell the price of 12 croissants' do
      expect(subject.croissant_pricing(12)).to eq(22.94)
    end

    it 'can tell the price of 13 croissants' do
      expect(subject.croissant_pricing(13)).to eq(25.85)
    end

    it 'can tell the price of 14 croissants' do
      expect(subject.croissant_pricing(14)).to eq(26.94)
    end

    it 'can tell the price of 15 croissants' do
      # 3 * 5 = 29.85
      # 9 + 3 + 3 = 28.89
      expect(subject.croissant_pricing(15)).to eq(28.89)
    end

    it 'can tell the price of 16 croissants' do
      expect(subject.croissant_pricing(16)).to eq(31.8)
    end

    it 'can tell the price of 17 croissants' do
      expect(subject.croissant_pricing(17)).to eq(32.89)
    end

    it 'can tell the price of 18 croissants' do
      expect(subject.croissant_pricing(18)).to eq(33.98)
    end

    it 'can tell the price of 19 croissants' do
      expect(subject.croissant_pricing(19)).to eq(36.89)
    end

    it 'can tell the price of 20 croissants' do
      # 4 * 5 = 39.8
      # 9 + 3 + 3 + 5 = 38.84
      expect(subject.croissant_pricing(20)).to eq(38.84)
    end

    it 'can tell the price of 21 croissants' do
      expect(subject.croissant_pricing(21)).to eq(39.93)
    end

    it 'can tell the price of 22 croissants' do
      expect(subject.croissant_pricing(22)).to eq(42.84)
    end

    it 'can tell the price of 23 croissants' do
      expect(subject.croissant_pricing(23)).to eq(43.93)
    end

    it 'can tell the price of 24 croissants' do
      # 5 + 5 + 5 + 9 = 46.84
      # 9 + 9 + 3 + 3 = 45.88
      expect(subject.croissant_pricing(24)).to eq(45.88)
    end

    it 'can tell the price of 25 croissants' do
      # 5 * 5 = 49.75
      # 9 + 5 + 5 + 3 + 3 = 48.79
      expect(subject.croissant_pricing(25)).to eq(48.79)
    end

    it 'can tell the price of 26 croissants' do
      expect(subject.croissant_pricing(26)).to eq(49.88)
    end
  end
end
