require 'csv'
require_relative '../app/models/tweet'
# require_relative 'shitter.csv'

CSV.foreach('db/shitter.csv') do |row|
  Tweet.create(:tweet => row.first)
end
