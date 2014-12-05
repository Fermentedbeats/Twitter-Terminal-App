require 'twitter'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "X0C2D1MSnWJPg8d0VPNFSm9vp"
  config.consumer_secret     = "lWRYStrz3d2es8BkVHKXTGySxsku0ttj0EdFFSEk8r9iahAVXH"
  config.access_token        = "2788201573-wzvAkHKZsfvtdbaBNvYLCLn00GhAq8vdg2dMTbq"
  config.access_token_secret = "YSsCauQ3K2kkY5hyBggZdCw4cg9UV544O1OMucVCXJZnm"
end

client.update("I'm tweeting with shitter!")
