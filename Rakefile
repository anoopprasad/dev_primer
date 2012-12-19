require 'rubygems'
require 'pony'
task :cron do
  current_path = File.expand_path(File.dirname(__FILE__))
  source_path = File.join(current_path, 'sources')
  source_files = Dir.entries(source_path).select { |s| s !~ /^\.\.?$/ }
  todays_file = File.join(source_path, source_files[Time.now.yday])
  Pony.mail({
    :to => 'austin@rawfingertips.com',
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
