require 'rubygems'
require 'pony'
require './filepicker'

task :cron do
  todays_file = Filepicker.new.filename
  Pony.mail({
    :to => 'austin@omadahealth.com',
    :subject => 'Your daily Ruby doc',
    :attachments => {File.basename(todays_file) => File.read(todays_file)},
    :via => :smtp,
    :via_options => {
      :address              => 'smtp.gmail.com',
      :port                 => '587',
      :enable_starttls_auto => true,
      :user_name            => ENV['GMAIL_USER'],
      :password             => ENV['GMAIL_PASS'],
      :authentication       => :plain, # :plain, :login, :cram_md5, no auth by default
      :domain               => "localhost.localdomain" # the HELO domain provided by the client to the server
    }
  })
  
end
