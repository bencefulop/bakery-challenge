# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Bakery::Croissant do
  subject { described_class.new }

  context 'Pricing'  do
    it '2 croissants is an invalid amount' do
      expect(subject.croissant_pricing(2)[:total]).to eq("Error: Croissant exact amount can't be served")
    end

    it 'can tell the price of 3 croissants' do
      expect(subject.croissant_pricing(3)[:total]).to eq('3 CF $5.95')
    end

    it '4 croissants is an invalid amount' do
      expect(subject.croissant_pricing(4)[:total]).to eq("Error: Croissant exact amount can't be served")
    end

    it 'can tell the price of 5 croissants' do
      expect(subject.croissant_pricing(5)[:total]).to eq('5 CF $9.95')
    end

    it 'can tell the price of 6 croissants' do
      expect(subject.croissant_pricing(6)[:total]).to eq('6 CF $11.9')
    end

    it '7 croissants is an invalid amount' do
      expect(subject.croissant_pricing(7)[:total]).to eq("Error: Croissant exact amount can't be served")
    end

    it 'can tell the price of 8 croissants' do
      expect(subject.croissant_pricing(8)[:total]).to eq('8 CF $15.9')
    end

    it 'can tell the price of 9 croissants' do
      expect(subject.croissant_pricing(9)[:total]).to eq('9 CF $16.99')
    end

    it 'can tell the price of 10 croissants' do
      expect(subject.croissant_pricing(10)[:total]).to eq('10 CF $19.9')
    end

    it 'can tell the price of 11 croissants' do
      expect(subject.croissant_pricing(11)[:total]).to eq('11 CF $21.85')
    end

    it 'can tell the price of 12 croissants' do
      expect(subject.croissant_pricing(12)[:total]).to eq('12 CF $22.94')
    end

    it 'can tell the price of 13 croissants' do
      expect(subject.croissant_pricing(13)[:total]).to eq('13 CF $25.85')
    end

    it 'can tell the price of 14 croissants' do
      expect(subject.croissant_pricing(14)[:total]).to eq('14 CF $26.94')
    end

    it 'can tell the price of 15 croissants' do
      # 3 * 5 = 29.85
      # 9 + 3 + 3 = 28.89
      expect(subject.croissant_pricing(15)[:total]).to eq('15 CF $28.89')
    end

    it 'can tell the price of 16 croissants' do
      expect(subject.croissant_pricing(16)[:total]).to eq('16 CF $31.8')
    end

    it 'can tell the price of 17 croissants' do
      expect(subject.croissant_pricing(17)[:total]).to eq('17 CF $32.89')
    end

    it 'can tell the price of 18 croissants' do
      expect(subject.croissant_pricing(18)[:total]).to eq('18 CF $33.98')
    end

    it 'can tell the price of 19 croissants' do
      expect(subject.croissant_pricing(19)[:total]).to eq('19 CF $36.89')
    end

    it 'can tell the price of 20 croissants' do
      # 4 * 5 = 39.8
      # 9 + 3 + 3 + 5 = 38.84
      expect(subject.croissant_pricing(20)[:total]).to eq('20 CF $38.84')
    end

    it 'can tell the price of 21 croissants' do
      expect(subject.croissant_pricing(21)[:total]).to eq('21 CF $39.93')
    end

    it 'can tell the price of 22 croissants' do
      expect(subject.croissant_pricing(22)[:total]).to eq('22 CF $42.84')
    end

    it 'can tell the price of 23 croissants' do
      expect(subject.croissant_pricing(23)[:total]).to eq('23 CF $43.93')
    end

    it 'can tell the price of 24 croissants' do
      # 5 + 5 + 5 + 9 = 46.84
      # 9 + 9 + 3 + 3 = 45.88
      expect(subject.croissant_pricing(24)[:total]).to eq('24 CF $45.88')
    end

    it 'can tell the price of 25 croissants' do
      # 5 * 5 = 49.75
      # 9 + 5 + 5 + 3 + 3 = 48.79
      expect(subject.croissant_pricing(25)[:total]).to eq('25 CF $48.79')
    end

    it 'can tell the price of 26 croissants' do
      expect(subject.croissant_pricing(26)[:total]).to eq('26 CF $49.88')
    end
  end
  context 'Order components' do
    it 'Provides order breakdown' do
      expect(subject.croissant_pricing(25)[:consists_of]).to eq("1 X 9 $16.99\n2 X 5 $9.95\n2 X 3 $5.95")
    end
  end
end
