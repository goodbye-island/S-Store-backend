require 'openssl'
    OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

class AuthTestController < ApplicationController
  def AuthTest

    url = URI.parse('https://www.googleapis.com/oauth2/v3/tokeninfo?access_token=1/fFBGRNJru1FQd44AzqT3Zg')
    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    req = Net::HTTP::Get.new(url.to_s)
    req = Net::HTTP::Get.new(url.request_uri)
    res = http.request(req)
    puts res.body
  end
end
