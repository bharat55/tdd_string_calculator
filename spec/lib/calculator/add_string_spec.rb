require 'rails_helper'

RSpec.describe Calculator::StringCalculator do
  describe '.add' do
    context 'when input is an empty string' do
      it 'returns 0' do
        result = described_class.add('')
        expect(result).to eq(0)
      end
    end

    context 'when the input is a non-empty string' do
      it 'returns the integer value of the string when it contains a single number' do
        expect(described_class.add("1")).to eq(1)
      end
    end
  
  end
end
