require 'twitter'
require 'csv'

$client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "X0C2D1MSnWJPg8d0VPNFSm9vp"
  config.consumer_secret     = "lWRYStrz3d2es8BkVHKXTGySxsku0ttj0EdFFSEk8r9iahAVXH"
  config.access_token        = "2788201573-wzvAkHKZsfvtdbaBNvYLCLn00GhAq8vdg2dMTbq"
  config.access_token_secret = "YSsCauQ3K2kkY5hyBggZdCw4cg9UV544O1OMucVCXJZnm"
end


class Tweet
  class << self
    def add
      puts "What would you like to tweet out?"
      twit = $stdin.gets.chomp
      $client.update(twit)
      puts "#{twit} has been tweeted!!!"
    end

    def list
      $client.home_timeline.each_with_index {|tweet, index| puts "#{index+1}. " + tweet.full_text}
    end

    def random
      poop_array = []
      CSV.foreach('shitter.csv') do |row|
        poop_array << row
      end

      $client.update(poop_array.sample.first.to_s)
    end
  end
end


class View
  def self.menu(user_input)
    case user_input
    when "tweet" then :add
    when "list" then :list
    when "random" then :random
    end
  end
end

class Controller
  def self.execute
    Tweet.send(View.menu(ARGV[0]))
  end
end

Controller.execute
