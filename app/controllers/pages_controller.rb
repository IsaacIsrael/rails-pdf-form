class PagesController < ApplicationController
  def home; end

  def download_pdf
    result = FillPdfFormWithFakeData.call(input_file: 'lib/assets/vanhack.pdf')
    file = File.open(result.output_file)

    send_data file.read,
              filename: "filled_form.pdf",
              type: "application/pdf"

    File.delete(result.output_file) if File.exist?(result.output_file)
  end
end
