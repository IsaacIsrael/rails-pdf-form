require 'spec_helper'

RSpec.describe FillPdfForm, type: :interactor do
  describe '.call' do
    let(:input_file) { 'lib/assets/vanhack.pdf'}
    let(:values) { FillFakeData.call(input_file: input_file).values }
    subject(:context) { FillPdfForm.call(input_file: input_file, values: values ) }
    it 'succeeds' do
      expect(context).to be_a_success
    end
    it 'pdf fields created' do
      expect(File.exist?(context.output_file)).to be_truthy
    end
  end
end
