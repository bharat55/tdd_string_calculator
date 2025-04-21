require 'rails_helper'

RSpec.describe Calculator::StringCalculator do
  describe '.add' do
    subject(:result) { described_class.add(input) }

    context 'when input is an empty string' do
      let(:input) { '' }

      it 'returns 0' do
        expect(result).to eq(0)
      end
    end

    context 'when input is a single number' do
      let(:input) { '1' }

      it 'returns the number itself' do
        expect(result).to eq(1)
      end
    end

    context 'when input contains two comma-separated numbers' do
      let(:input) { '5,6' }

      it 'returns their sum' do
        expect(result).to eq(11)
      end
    end

    context 'when input contains multiple comma-separated numbers' do
      let(:input) { '1,2,3,4' }

      it 'returns their sum' do
        expect(result).to eq(10)
      end
    end

    context 'when input contains newlines between numbers' do
      let(:input) { "1\n2,3" }

      it 'returns their sum' do
        expect(result).to eq(6)
      end
    end

    context 'when input uses a custom delimiter' do
      let(:input) { "//;\n1;2" }

      it 'parses the delimiter and returns the sum' do
        expect(result).to eq(3)
      end
    end

    context 'when input contains negative numbers' do
      let(:input) { '1,-2,3,-4' }

      it 'raises an error listing all negative numbers' do
        expect { result }.to raise_error("negative numbers not allowed -2,-4")
      end
    end
  end
end
