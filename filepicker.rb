class Filepicker
  def filename
    current_path = File.expand_path(File.dirname(__FILE__))
    source_path = File.join(current_path, 'sources')
    source_files = Dir.entries(source_path).select { |s| s !~ /^\.\.?$/ }
    source_file = source_files[Time.now.yday - (ENV['OFFSET_START']||0)]
    source_file && File.join(source_path, source_file)
  end
end
