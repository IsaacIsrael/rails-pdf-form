require 'pdf_forms'

pdftk = PdfForms.new
input_file = 'lib/assets/vanhack.pdf'
output_file = 'lib/assets/output.pdf'

# Get all the fields
fields =  pdftk.get_fields input_file

# Create fake data
outputs = {}

fields.each do |field|
  outputs[field.name] = 'dummy text' if field.type == 'Text'

  outputs[field.name] = field.options[0] if field.type == 'Button'
end

File.delete(output_file) if File.exist?(output_file)
pdftk.fill_form input_file, output_file, outputs, flatten: true

exec("open #{output_file}")
