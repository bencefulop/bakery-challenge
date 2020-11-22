# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Bakery::BakeryShop do
  subject { described_class.new }

  context 'has 3 products' do
    it 'sells Vegemite Scrolls' do
      expect(subject).to respond_to(:vs5)
    end

    it 'sells Blueberry Muffins' do
      expect(subject).to respond_to(:mb11)
    end

    it 'sells Croissants' do
      expect(subject).to respond_to(:cf)
    end
  end

  context 'Processes orders' do
    it 'loads orders from a file' do
      path = "#{File.dirname(__FILE__)}/fixtures/orders.txt"
      orders = subject.load_orders(path)
      expect(orders).to eq([%w[10 VS5], %w[14 MB11], %w[13 CF]])
    end

    it 'outputs the total and the breakdown' do
      subject { described_class.new }
      input = [%w[29 VS5], %w[32 MB11]]
      message = "29 VS5 $56.93\n4 X 5 $8.99\n3 X 3 $6.99\n\n32 MB11 $99.8\n4 X 8 $24.95\n\n"
      expect { subject.purchase_products(input) }.to output(message).to_stdout
    end
  end
end
