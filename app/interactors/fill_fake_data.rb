class FillFakeData
  include Interactor

  def call
    pdftk = PdfForms.new

    context.outputs = {}
    fields = pdftk.get_fields context.input_file
    fields.each do |field|
      context.outputs[field.name] = 'dummy text' if field.type == 'Text'
      context.outputs[field.name] = field.options[0] if field.type == 'Button'
    end
  end
end
