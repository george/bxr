ActionMailer::Base.delivery_method = :smtp

ActionMailer::Base.smtp_settings = {
  :address => 'bogus',
  :port => 25,
  :domain => 'bogus'
}

# Path where the files will be stored
UPLOAD_PATH = "#{RAILS_ROOT}/uploads"


# Define the helpers that extract the plain-text to be indexed
INDEX_HELPERS = [ # defines helpers
  # Examples:
  { :ext => /rtf$/, :helper => 'unrtf --text %s', :remove_before => /-----------------/ },
  #{ :ext => /pdf$/, :helper => 'java -cp /Applications/PDFBox-0.7.3/lib/PDFBox-0.7.3-dev.jar:/Applications/PDFBox-0.7.3/external/FontBox-0.1.0-dev.jar org.pdfbox.ExtractText %s %s', :file_output => true },
  { :ext => /doc$/, :helper => 'antiword %s', :remove_before => /-----------------/ }
]