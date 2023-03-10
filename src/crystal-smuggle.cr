require "option_parser"
require "./options.cr"
require "./scan.cr"

module Crystal::Smuggle
  VERSION = "0.1.0"
end

url = ""
pipeline = false
method = "POST"
headers = ""
timeout = 5
output = ""

OptionParser.parse do |parser|
  parser.banner = "CRYSTAL-SMUGGLE"

  parser.on "-u URL", "--url=URL", "Target URL from argument" {|var| url = var}
  parser.on "-p", "--pipeline", "Target URL from stdin"{pipeline = true}
  parser.on "-X METHOD", "--method=METHOD", "Set HTTP Request Method" {|var| method = var}
  parser.on "-H HEADERS", "--headers=HEADERS", "Set HTTP Request Headers" {|var| headers = var}
  parser.on "-t SECOND", "--timeout=SECOND", "Set Timeout" {|var| timeout = var.to_i}
  parser.on "-o PATH", "--output=PATH", "Output file" {|var| output = var}
  parser.on "-v", "--version", "Show version" do
    puts Crystal::Smuggle::VERSION
    exit
  end
  parser.on "-h", "--help", "Show help" do
    puts parser
    exit
  end
  parser.invalid_option do |flag|
    STDERR.puts "ERROR: #{flag} is not a valid option."
    STDERR.puts parser
    exit(1)
  end
end

options = Options.new(method, headers, timeout, output)

if pipeline 
  # STDIN
else
  # URL
  scan(url, options)
end