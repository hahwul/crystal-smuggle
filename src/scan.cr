require "logger"
require "http/client"
require "uri"

def scan(url : String, options : Options)
  log = Logger.new(STDERR)
  uri = URI.parse url

  if uri.host != nil
    log.info("send to #{uri.host.to_s}")
    client = HTTP::Client.new uri.host.to_s
    client.connect_timeout = options.timeout

    client.before_request do |request|
      request.headers["Authorization"] = "XYZ123"
    end

    client.exec(HTTP::Request.new(options.method, uri.request_target.to_s)) do |response|
      log.info(response.status_code)
    end
  end
end
