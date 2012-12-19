require './filepicker'
get "/" do
  haml :signup, locals: {todays_file: Filepicker.new.filename}
end

