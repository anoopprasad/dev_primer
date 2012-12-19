require 'rubygems'
require 'pony'
require './filepicker'

task :cron do
  todays_file = Filepicker.new.filename
  exit unless todays_file
  recipients = ENV['PRIMER_SUBSCRIBERS']
  Pony.mail({
    :to => recipients,
    :subject => 'Your daily Ruby doc',
    :body => "Some of these may be out of date, but the ideas are still helpful",
    :attachments => {File.basename(todays_file) => File.read(todays_file, binmode:true)},
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
