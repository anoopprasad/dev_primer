class Filepicker
  def filename
    current_path = File.expand_path(File.dirname(__FILE__))
    source_path = File.join(current_path, 'sources')
    source_files = Dir.entries(source_path).select { |s| s !~ /^\.\.?$/ }
    File.join(source_path, source_files[Time.now.yday - 350])
  end
end
