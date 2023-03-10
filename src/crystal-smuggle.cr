require "option_parser"

module Crystal::Smuggle
  VERSION = "0.1.0"

  # TODO!
end

OptionParser.parse do |parser|
  parser.banner = "CRYSTAL-SMUGGLE"

  parser.on "-u", "--url", "Target URL from argument" do

  end
  parser.on "-p", "--pipeline", "Target URL from stdin" do

  end
  parser.on "-X", "--method", "Set HTTP Request Method" do
    
  end
  parser.on "-H", "--headers", "Set HTTP Request Headers" do
    
  end
  parser.on "-t", "--timeout", "Set Timeout" do
    
  end
  parser.on "-o", "--output", "Output file" do
    
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
