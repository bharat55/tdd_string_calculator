require 'rails_helper'

RSpec.describe Calculator::StringCalculator do
  describe '.add' do
    context 'when input is an empty string' do
      it 'returns 0' do
        result = described_class.add('')
        expect(result).to eq(0)
      end
    end
  end
end
