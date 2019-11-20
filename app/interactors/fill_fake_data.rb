class FillFakeData
  include Interactor

  def call
    pdftk = PdfForms.new

    context.values = {}
    fields = pdftk.get_fields context.input_file
    fields.each do |field|
      context.values[field.name] = Faker::Name.unique.name if field.type == 'Text'
      context.values[field.name] = rand(0..field.options.count)  if field.type == 'Button'
    end
  end
end
