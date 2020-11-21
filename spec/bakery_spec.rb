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
end
