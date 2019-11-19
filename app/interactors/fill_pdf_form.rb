class FillPdfForm
  include Interactor

  def call
    context.output_file = 'lib/assets/output.pdf'
    File.delete(context.output_file) if File.exist?(context.output_file)

    pdftk = PdfForms.new
    pdftk.fill_form input_file, context.output_file, context.values, flatten: true
  end
end

