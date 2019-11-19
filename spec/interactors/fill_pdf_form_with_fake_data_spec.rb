require 'spec_helper'

RSpec.describe FillPdfFormWithFakeData, type: :interactor do
  describe '.call' do
    let(:input_file) { 'lib/assets/vanhack.pdf'}
    subject(:context) { FillPdfFormWithFakeData.call(input_file: input_file) }
    it 'succeeds' do
      expect(context).to be_a_success
    end
    it 'pdf fields created' do
      expect(File.exist?(context.output_file)).to be_truthy
      # exec("open #{context.output_file}")
    end
  end
end
