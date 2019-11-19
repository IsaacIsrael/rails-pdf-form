class PagesController < ApplicationController
  def home
    result = FillPdfFormWithFakeData.call(input_file: 'lib/assets/vanhack.pdf')
    system "open #{result.output_file}"
    File.delete(result.output_file) if File.exist?(result.output_file)
  end
end
