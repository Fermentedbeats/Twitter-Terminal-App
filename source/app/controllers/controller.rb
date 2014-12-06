require_relative '../config/app'
require 'twitter'


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

