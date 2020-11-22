# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Bakery::BlueberryMuffin do
  subject { described_class.new }

  context 'Pricing'  do
    it 'can tell the price of 2 blueberry muffins' do
      expect(subject.blueberry_muffin_pricing(2)[:total]).to eq('2 MB11 $9.95')
    end

    it '3 blueberry muffins is an invalid amount' do
      expect(subject.blueberry_muffin_pricing(3)[:total]).to eq("Exact amount can't be served")
    end

    it 'can tell the price of 4 blueberry muffins' do
      expect(subject.blueberry_muffin_pricing(4)[:total]).to eq('4 MB11 $19.9')
    end

    it 'can tell the price of 5 blueberry muffins' do
      expect(subject.blueberry_muffin_pricing(5)[:total]).to eq('5 MB11 $16.95')
    end

    it 'can tell the price of 6 blueberry muffins' do
      expect(subject.blueberry_muffin_pricing(6)[:total]).to eq('6 MB11 $29.85')
    end

    it 'can tell the price of 7 blueberry muffins' do
      expect(subject.blueberry_muffin_pricing(7)[:total]).to eq('7 MB11 $26.9')
    end

    it 'can tell the price of 8 blueberry muffins' do
      expect(subject.blueberry_muffin_pricing(8)[:total]).to eq('8 MB11 $24.95')
    end

    it 'can tell the price of 9 blueberry muffins' do
      expect(subject.blueberry_muffin_pricing(9)[:total]).to eq('9 MB11 $36.85')
    end

    it 'can tell the price of 10 blueberry muffins' do
      expect(subject.blueberry_muffin_pricing(10)[:total]).to eq('10 MB11 $34.9')
    end

    it 'can tell the price of 11 blueberry muffins' do
      expect(subject.blueberry_muffin_pricing(11)[:total]).to eq('11 MB11 $46.8')
    end

    it 'can tell the price of 12 blueberry muffins' do
      expect(subject.blueberry_muffin_pricing(12)[:total]).to eq('12 MB11 $44.85')
    end

    it 'can tell the price of 13 blueberry muffins' do
      expect(subject.blueberry_muffin_pricing(13)[:total]).to eq('13 MB11 $41.9')
    end

    it 'can tell the price of 14 blueberry muffins' do
      expect(subject.blueberry_muffin_pricing(14)[:total]).to eq('14 MB11 $54.8')
    end

    it 'can tell the price of 15 blueberry muffins' do
      expect(subject.blueberry_muffin_pricing(15)[:total]).to eq('15 MB11 $51.85')
    end

    it 'can tell the price of 16 blueberry muffins' do
      expect(subject.blueberry_muffin_pricing(16)[:total]).to eq('16 MB11 $49.9')
    end

    it 'can tell the price of 17 blueberry muffins' do
      expect(subject.blueberry_muffin_pricing(17)[:total]).to eq('17 MB11 $61.8')
    end

    it 'can tell the price of 18 blueberry muffins' do
      expect(subject.blueberry_muffin_pricing(18)[:total]).to eq('18 MB11 $59.85')
    end

    it 'can tell the price of 19 blueberry muffins' do
      expect(subject.blueberry_muffin_pricing(19)[:total]).to eq('19 MB11 $71.75')
    end

    it 'can tell the price of 20 blueberry muffins' do
      expect(subject.blueberry_muffin_pricing(20)[:total]).to eq('20 MB11 $69.8')
    end

    it 'can tell the price of 21 blueberry muffins' do
      expect(subject.blueberry_muffin_pricing(21)[:total]).to eq('21 MB11 $66.85')
    end

    it 'can tell the price of 22 blueberry muffins' do
      expect(subject.blueberry_muffin_pricing(22)[:total]).to eq('22 MB11 $79.75')
    end

    it 'can tell the price of 23 blueberry muffins' do
      expect(subject.blueberry_muffin_pricing(23)[:total]).to eq('23 MB11 $76.8')
    end
  end
  context 'Order components' do
    it 'Provides order breakdown' do
      expect(subject.blueberry_muffin_pricing(23)[:consists_of]).to eq("2 X 8 $24.95\n1 X 5 $16.95\n1 X 2 $9.95")
    end
  end
end
