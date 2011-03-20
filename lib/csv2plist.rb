$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

module Csv2plist
  def self.convert(src, dst, opts={})
    puts "#{src} -> #{dst}"
  end
end
