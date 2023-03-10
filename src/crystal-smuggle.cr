require "option_parser"

module Crystal::Smuggle
  VERSION = "0.1.0"

  # TODO!
end

OptionParser.parse do |parser|
  parser.banner = "CRYSTAL-SMUGGLE"

  parser.on "-v", "--version", "Show version" do
    puts Crystal::Smuggle::VERSION
    exit
  end
  parser.on "-h", "--help", "Show help" do
    puts parser
    exit
  end
end
