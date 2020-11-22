# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Bakery::VegemiteScroll do
  subject { described_class.new }

  context 'Pricing'  do
    it 'can tell the price of 3 vegemite scrolls' do
      expect(subject.vegemite_scroll_pricing(3)[:total]).to eq('3 VS5 $6.99')
    end

    it '4 vegemite scrolls is an invalid amount' do
      expect(subject.vegemite_scroll_pricing(4)[:total]).to eq("Error: Vegemite Scroll exact amount can't be served")
    end

    it 'can tell the price of 5 vegemite scrolls' do
      expect(subject.vegemite_scroll_pricing(5)[:total]).to eq('5 VS5 $8.99')
    end

    it 'can tell the price of 6 vegemite scrolls' do
      expect(subject.vegemite_scroll_pricing(6)[:total]).to eq('6 VS5 $13.98')
    end

    it '7 vegemite scrolls is an invalid amount' do
      expect(subject.vegemite_scroll_pricing(7)[:total]).to eq("Error: Vegemite Scroll exact amount can't be served")
    end

    it 'can tell the price of 8 vegemite scrolls' do
      expect(subject.vegemite_scroll_pricing(8)[:total]).to eq('8 VS5 $15.98')
    end

    it 'can tell the price of 9 vegemite scrolls' do
      expect(subject.vegemite_scroll_pricing(9)[:total]).to eq('9 VS5 $20.97')
    end

    it 'can tell the price of 10 vegemite scrolls' do
      expect(subject.vegemite_scroll_pricing(10)[:total]).to eq('10 VS5 $17.98')
    end

    it 'can tell the price of 11 vegemite scrolls' do
      expect(subject.vegemite_scroll_pricing(11)[:total]).to eq('11 VS5 $22.97')
    end

    it 'can tell the price of 12 vegemite scrolls' do
      expect(subject.vegemite_scroll_pricing(12)[:total]).to eq('12 VS5 $27.96')
    end

    it 'can tell the price of 13 vegemite scrolls' do
      expect(subject.vegemite_scroll_pricing(13)[:total]).to eq('13 VS5 $24.97')
    end

    it 'can tell the price of 14 vegemite scrolls' do
      expect(subject.vegemite_scroll_pricing(14)[:total]).to eq('14 VS5 $29.96')
    end

    it 'can tell the price of 15 vegemite scrolls' do
      expect(subject.vegemite_scroll_pricing(15)[:total]).to eq('15 VS5 $26.97')
    end
  end
  context 'Order components' do
    it 'Provides order breakdown' do
      expect(subject.vegemite_scroll_pricing(11)[:consists_of]).to eq("1 X 5 $8.99\n2 X 3 $6.99")
    end
  end
end
