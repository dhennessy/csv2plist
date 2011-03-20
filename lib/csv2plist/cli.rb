require 'optparse'

module Csv2plist
  class CLI
    def self.execute(stdout, arguments=[])

      # NOTE: the option -p/--path= is given as an example, and should be replaced in your application.

      options = {
        :outputfile     => nil
      }
      mandatory_options = %w(  )

      parser = OptionParser.new do |opts|
        opts.banner = <<-BANNER.gsub(/^          /,'')
          csv2plist converts a comma-separated variable (CSV) file to a property
          list (PLIST) xml file structured as an array of dictionary elements. Each
          dictionary will have a mapping from the column heading to the value on
          the corresponding row.

          Usage: #{File.basename($0)} [options] <csvfile>

          Options are:
        BANNER
        opts.separator ""
        opts.on("-o", "--output PATH", String,
                "Specify the output file.",
                "Default: source file, with .plist extension") { |arg| options[:outputfile] = arg }
        opts.on("-h", "--help",
                "Show this help message.") { stdout.puts opts; exit }
        opts.parse!(arguments)

        if arguments.empty? || mandatory_options && mandatory_options.find { |option| options[option.to_sym].nil? }
          stdout.puts opts; 
          exit
        end
      end

      srcfile = arguments[0]
      outputfile = options[:outputfile] || srcfile.gsub(/.csv/i, ".plist")
      outputfile = outputfile + ".plist" if outputfile == srcfile
      
      Csv2plist.convert(srcfile, outputfile)
    end
  end
end
