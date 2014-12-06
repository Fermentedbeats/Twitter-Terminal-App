require 'csv'

class Tweet < ActiveRecord::Base
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
      $client.update(poop_array.sample.first.to_s)
    end
  end
end


