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

      it "correctly adds two numbers provided as a comma-separated string" do
        expect(described_class.add("5,6")).to eq(11)
      end

      it "returns the sum of multiple comma-separated numbers" do
        expect(described_class.add("1,2,3,4")).to eq(10)
      end
      
    end
  
  end
end
