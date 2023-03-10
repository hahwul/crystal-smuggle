require "option_parser"
require "./options.cr"

module Crystal::Smuggle
  VERSION = "0.1.0"

  # TODO!
end


OptionParser.parse do |parser|
  parser.banner = "CRYSTAL-SMUGGLE"

  parser.on "-u URL", "--url=URL", "Target URL from argument" do |url|

  end
  parser.on "-p", "--pipeline", "Target URL from stdin" do

  end
  parser.on "-X METHOD", "--method=METHOD", "Set HTTP Request Method" do |method|
    
  end
  parser.on "-H HEADERS", "--headers=HEADERS", "Set HTTP Request Headers" do |headers|
    
  end
  parser.on "-t SECOND", "--timeout=SECOND", "Set Timeout" do |timeout|
    
  end
  parser.on "-o PATH", "--output=PATH", "Output file" do |output|
    
  end
  parser.on "-v", "--version", "Show version" do
    puts Crystal::Smuggle::VERSION
    exit
  end
  parser.on "-h", "--help", "Show help" do
    puts parser
    exit
  end
end
