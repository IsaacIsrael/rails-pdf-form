require 'pdf_forms'

pdftk = PdfForms.new('/usr/local/bin/pdftk')

p pdftk.get_field_names 'input_1.pdf'
p pdftk.get_field_names 'input_2.pdf'

