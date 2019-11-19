class FillFakeData
  include Interactor

  def call
    pdftk = PdfForms.new

    context.values = {}
    fields = pdftk.get_fields context.input_file
    fields.each do |field|
      context.values[field.name] = 'dummy text' if field.type == 'Text'
      context.values[field.name] = field.options[0] if field.type == 'Button'
    end
  end
end
