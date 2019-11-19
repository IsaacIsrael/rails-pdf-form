require 'spec_helper'

RSpec.describe FillFakeData, type: :interactor do
  describe '.call' do
    subject(:context) { FillFakeData.call(input_file: 'lib/assets/vanhack.pdf') }
    it 'succeeds' do
      expect(context).to be_a_success
    end
    it 'return outputs for all fields' do
      expect(context.values.count).to eq 454
    end
  end
end
