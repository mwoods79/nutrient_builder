require 'optparse'

module NutrientBuilder
  class Options
    
    attr_accessor :activerecord
    attr_accessor :abbreviated
    attr_accessor :database_type
    attr_accessor :username
    attr_accessor :password
    
    
    def initialize(argv)
      parse(argv)
    end

  private

    def parse(argv)
      OptionParser.new do |opts|
        opts.banner = "Usage: create_db [ options ]"
        opts.on("-a", "--abreviated", "Abbreviated SR Nutrients?") do |abreviated|
          @abbreviated = abreviated
        end
        opts.on("-h", "--help", "Show this message") do
          puts opts
          exit
        end
        begin
          argv = ["-h"] if argv.empty?
          opts.parse!(argv)
        rescue OptionParser::ParseError => e
          STDERR.puts e.message, "\n", opts
          exit(-1)
        end
      end
    end
  end
end