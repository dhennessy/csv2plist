require 'fastercsv'
require 'plist'

$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))


module Csv2plist
  def self.convert(src, dst, opts={})
    rows = FasterCSV.read(src)
    cols = rows[0]
    entries = []
    puts "Columns: #{cols.inspect}"
    (1..rows.length-1).each do |row|
      vals = rows[row]
      dict = {}
      cols.each_with_index do |c,i|
        if vals[i]
          value = vals[i].strip
          dict[c] = value if c && value.length > 0
        end
      end
      entries << dict
    end
    entries.save_plist(dst)
  end
end
